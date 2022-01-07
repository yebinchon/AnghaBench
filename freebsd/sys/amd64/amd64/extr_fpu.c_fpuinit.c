
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_int ;
typedef int register_t ;


 int CR4_XSAVE ;
 scalar_t__ IS_BSP () ;
 int XCR0 ;
 int __INITIAL_FPUCW__ ;
 int __INITIAL_MXCSR__ ;
 int fldcw (int ) ;
 int fninit () ;
 int fpuinit_bsp1 () ;
 int fpuinit_bsp2 () ;
 int intr_disable () ;
 int intr_restore (int ) ;
 int ldmxcsr (int ) ;
 int load_cr4 (int) ;
 int load_xcr (int ,int ) ;
 int rcr4 () ;
 int start_emulating () ;
 int stop_emulating () ;
 scalar_t__ use_xsave ;
 int xsave_mask ;

void
fpuinit(void)
{
 register_t saveintr;
 u_int mxcsr;
 u_short control;

 if (IS_BSP())
  fpuinit_bsp1();

 if (use_xsave) {
  load_cr4(rcr4() | CR4_XSAVE);
  load_xcr(XCR0, xsave_mask);
 }




 if (IS_BSP())
  fpuinit_bsp2();




 saveintr = intr_disable();
 stop_emulating();
 fninit();
 control = __INITIAL_FPUCW__;
 fldcw(control);
 mxcsr = __INITIAL_MXCSR__;
 ldmxcsr(mxcsr);
 start_emulating();
 intr_restore(saveintr);
}
