
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int XCR0 ;
 int fninit () ;
 int fpurestore (void*) ;
 int load_cr0 (int ) ;
 int load_xcr (int ,int ) ;
 int rcr0 () ;
 int stop_emulating () ;
 scalar_t__ use_xsave ;
 int xsave_mask ;

void
fpuresume(void *addr)
{
 u_long cr0;

 cr0 = rcr0();
 stop_emulating();
 fninit();
 if (use_xsave)
  load_xcr(XCR0, xsave_mask);
 fpurestore(addr);
 load_cr0(cr0);
}
