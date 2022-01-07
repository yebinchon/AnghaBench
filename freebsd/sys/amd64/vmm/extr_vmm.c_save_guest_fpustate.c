
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu {int guestfpu; int guest_xcr0; } ;


 int CR0_TS ;
 int CR4_XSAVE ;
 int fpu_start_emulating () ;
 int fpu_stop_emulating () ;
 int fpusave (int ) ;
 int load_xcr (int ,int ) ;
 int panic (char*) ;
 int rcr0 () ;
 int rcr4 () ;
 int rxcr (int ) ;
 int vmm_get_host_xcr0 () ;

__attribute__((used)) static void
save_guest_fpustate(struct vcpu *vcpu)
{

 if ((rcr0() & CR0_TS) == 0)
  panic("fpu emulation not enabled in host!");


 if (rcr4() & CR4_XSAVE) {
  vcpu->guest_xcr0 = rxcr(0);
  load_xcr(0, vmm_get_host_xcr0());
 }


 fpu_stop_emulating();
 fpusave(vcpu->guestfpu);
 fpu_start_emulating();
}
