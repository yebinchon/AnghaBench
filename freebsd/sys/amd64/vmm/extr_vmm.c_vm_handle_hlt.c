
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int halted_cpus; int active_cpus; scalar_t__ suspend; int * rendezvous_func; struct vcpu* vcpu; } ;
struct vcpu {int mtx; int vlapic; scalar_t__ reqidle; } ;


 int CPU_CLR_ATOMIC (int,int *) ;
 scalar_t__ CPU_CMP (int *,int *) ;
 int CPU_ISSET (int,int *) ;
 int CPU_SET_ATOMIC (int,int *) ;
 int KASSERT (int,char*) ;
 int VCPU_CTR0 (struct vm*,int,char*) ;
 int VCPU_FROZEN ;
 int VCPU_IDLE_TICKS ;
 int VCPU_SLEEPING ;
 int VM_SUSPEND_HALT ;
 scalar_t__ halt_detection_enabled ;
 int hz ;
 int msleep_spin (struct vcpu*,int *,char const*,int ) ;
 int ticks ;
 scalar_t__ vcpu_debugged (struct vm*,int) ;
 int vcpu_lock (struct vcpu*) ;
 int vcpu_require_state_locked (struct vm*,int,int ) ;
 scalar_t__ vcpu_should_yield (struct vm*,int) ;
 int vcpu_unlock (struct vcpu*) ;
 scalar_t__ vlapic_pending_intr (int ,int *) ;
 scalar_t__ vm_extint_pending (struct vm*,int) ;
 scalar_t__ vm_nmi_pending (struct vm*,int) ;
 int vm_suspend (struct vm*,int ) ;
 int vmm_stat_incr (struct vm*,int,int ,int) ;

__attribute__((used)) static int
vm_handle_hlt(struct vm *vm, int vcpuid, bool intr_disabled, bool *retu)
{
 struct vcpu *vcpu;
 const char *wmesg;
 int t, vcpu_halted, vm_halted;

 KASSERT(!CPU_ISSET(vcpuid, &vm->halted_cpus), ("vcpu already halted"));

 vcpu = &vm->vcpu[vcpuid];
 vcpu_halted = 0;
 vm_halted = 0;

 vcpu_lock(vcpu);
 while (1) {
  if (vm->rendezvous_func != ((void*)0) || vm->suspend || vcpu->reqidle)
   break;
  if (vm_nmi_pending(vm, vcpuid))
   break;
  if (!intr_disabled) {
   if (vm_extint_pending(vm, vcpuid) ||
       vlapic_pending_intr(vcpu->vlapic, ((void*)0))) {
    break;
   }
  }


  if (vcpu_should_yield(vm, vcpuid))
   break;

  if (vcpu_debugged(vm, vcpuid))
   break;







  if (intr_disabled) {
   wmesg = "vmhalt";
   VCPU_CTR0(vm, vcpuid, "Halted");
   if (!vcpu_halted && halt_detection_enabled) {
    vcpu_halted = 1;
    CPU_SET_ATOMIC(vcpuid, &vm->halted_cpus);
   }
   if (CPU_CMP(&vm->halted_cpus, &vm->active_cpus) == 0) {
    vm_halted = 1;
    break;
   }
  } else {
   wmesg = "vmidle";
  }

  t = ticks;
  vcpu_require_state_locked(vm, vcpuid, VCPU_SLEEPING);




  msleep_spin(vcpu, &vcpu->mtx, wmesg, hz);
  vcpu_require_state_locked(vm, vcpuid, VCPU_FROZEN);
  vmm_stat_incr(vm, vcpuid, VCPU_IDLE_TICKS, ticks - t);
 }

 if (vcpu_halted)
  CPU_CLR_ATOMIC(vcpuid, &vm->halted_cpus);

 vcpu_unlock(vcpu);

 if (vm_halted)
  vm_suspend(vm, VM_SUSPEND_HALT);

 return (0);
}
