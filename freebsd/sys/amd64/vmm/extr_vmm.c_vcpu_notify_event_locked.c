
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu {int hostcpu; scalar_t__ state; int vlapic; } ;


 int KASSERT (int,char*) ;
 int NOCPU ;
 scalar_t__ VCPU_RUNNING ;
 scalar_t__ VCPU_SLEEPING ;
 int curcpu ;
 int ipi_cpu (int,int ) ;
 int vlapic_post_intr (int ,int,int ) ;
 int vmm_ipinum ;
 int wakeup_one (struct vcpu*) ;

__attribute__((used)) static void
vcpu_notify_event_locked(struct vcpu *vcpu, bool lapic_intr)
{
 int hostcpu;

 hostcpu = vcpu->hostcpu;
 if (vcpu->state == VCPU_RUNNING) {
  KASSERT(hostcpu != NOCPU, ("vcpu running on invalid hostcpu"));
  if (hostcpu != curcpu) {
   if (lapic_intr) {
    vlapic_post_intr(vcpu->vlapic, hostcpu,
        vmm_ipinum);
   } else {
    ipi_cpu(hostcpu, vmm_ipinum);
   }
  } else {






  }
 } else {
  KASSERT(hostcpu == NOCPU, ("vcpu state %d not consistent "
      "with hostcpu %d", vcpu->state, hostcpu));
  if (vcpu->state == VCPU_SLEEPING)
   wakeup_one(vcpu);
 }
}
