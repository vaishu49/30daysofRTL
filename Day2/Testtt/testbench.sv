// Code your testbench here
// or browse Examples
module tb;
  reg p,q;
  wire r;
  
  or_dut or_dut_inst(.y(r),.a(p),.b(q));
  initial 
    
   begin
     $monitor("t=%0t, p=%b, q=%b, r=%b",$time, p,q,r);
        #5 p=0; q=0;
        #5 p=0; q=1;
        #5 p=1; q=0;
        #5 p=1; q=1;
    end
  
  initial begin
    $dumpfile("file.vcd");
    $dumpvars("1");
  end
    
    
   endmodule
     
