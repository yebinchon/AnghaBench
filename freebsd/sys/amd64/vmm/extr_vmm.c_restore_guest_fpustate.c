
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu {int guest_xcr0; int guestfpu; } ;


 int CR4_XSAVE ;
 int curthread ;
 int fpu_start_emulating () ;
 int fpu_stop_emulating () ;
 int fpuexit (int ) ;
 int fpurestore (int ) ;
 int load_xcr (int ,int ) ;
 int rcr4 () ;

__attribute__((used)) static void
restore_guest_fpustate(struct vcpu *vcpu)
{


 fpuexit(curthread);


 fpu_stop_emulating();
 fpurestore(vcpu->guestfpu);


 if (rcr4() & CR4_XSAVE)
  load_xcr(0, vcpu->guest_xcr0);





 fpu_start_emulating();
}
