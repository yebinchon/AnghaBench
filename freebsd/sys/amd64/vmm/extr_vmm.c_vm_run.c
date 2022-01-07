
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct vm_run {int cpuid; int vm_exit; } ;
struct TYPE_8__ {int rflags; } ;
struct TYPE_7__ {int vector; } ;
struct TYPE_9__ {TYPE_2__ hlt; TYPE_1__ ioapic_eoi; } ;
struct vm_exit {int exitcode; TYPE_3__ u; scalar_t__ inst_length; scalar_t__ rip; } ;
struct vm_eventinfo {int * iptr; int * sptr; int * rptr; } ;
struct vm {int maxcpus; int cookie; int suspend; int rendezvous_func; struct vcpu* vcpu; int vmspace; int suspended_cpus; int active_cpus; } ;
struct vcpu {scalar_t__ nextrip; int reqidle; struct vm_exit exitinfo; } ;
struct pcb {int dummy; } ;
typedef TYPE_4__* pmap_t ;
struct TYPE_10__ {int pm_active; } ;


 scalar_t__ CPU_ISSET (int,int *) ;
 int EINVAL ;
 int KASSERT (int,char*) ;
 int PCB_FULL_IRET ;
 struct pcb* PCPU_GET (int ) ;
 int PSL_I ;
 int VCPU_CTR2 (struct vm*,int,char*,int,int) ;
 int VCPU_FROZEN ;
 int VCPU_RUNNING ;
 int VCPU_TOTAL_RUNTIME ;
 int VMRUN (int ,int,scalar_t__,TYPE_4__*,struct vm_eventinfo*) ;
 int bcopy (struct vm_exit*,int *,int) ;
 int critical_enter () ;
 int critical_exit () ;
 int curcpu ;
 int curpcb ;
 scalar_t__ rdtsc () ;
 int restore_guest_fpustate (struct vcpu*) ;
 int save_guest_fpustate (struct vcpu*) ;
 int set_pcb_flags (struct pcb*,int ) ;
 int vcpu_require_state (struct vm*,int,int ) ;
 int vioapic_process_eoi (struct vm*,int,int ) ;
 int vm_handle_hlt (struct vm*,int,int,int*) ;
 int vm_handle_inout (struct vm*,int,struct vm_exit*,int*) ;
 int vm_handle_inst_emul (struct vm*,int,int*) ;
 int vm_handle_paging (struct vm*,int,int*) ;
 int vm_handle_rendezvous (struct vm*,int) ;
 int vm_handle_reqidle (struct vm*,int,int*) ;
 int vm_handle_suspend (struct vm*,int,int*) ;
 int vm_inject_ud (struct vm*,int) ;
 int vmm_stat_incr (struct vm*,int,int ,scalar_t__) ;
 TYPE_4__* vmspace_pmap (int ) ;

int
vm_run(struct vm *vm, struct vm_run *vmrun)
{
 struct vm_eventinfo evinfo;
 int error, vcpuid;
 struct vcpu *vcpu;
 struct pcb *pcb;
 uint64_t tscval;
 struct vm_exit *vme;
 bool retu, intr_disabled;
 pmap_t pmap;

 vcpuid = vmrun->cpuid;

 if (vcpuid < 0 || vcpuid >= vm->maxcpus)
  return (EINVAL);

 if (!CPU_ISSET(vcpuid, &vm->active_cpus))
  return (EINVAL);

 if (CPU_ISSET(vcpuid, &vm->suspended_cpus))
  return (EINVAL);

 pmap = vmspace_pmap(vm->vmspace);
 vcpu = &vm->vcpu[vcpuid];
 vme = &vcpu->exitinfo;
 evinfo.rptr = &vm->rendezvous_func;
 evinfo.sptr = &vm->suspend;
 evinfo.iptr = &vcpu->reqidle;
restart:
 critical_enter();

 KASSERT(!CPU_ISSET(curcpu, &pmap->pm_active),
     ("vm_run: absurd pm_active"));

 tscval = rdtsc();

 pcb = PCPU_GET(curpcb);
 set_pcb_flags(pcb, PCB_FULL_IRET);

 restore_guest_fpustate(vcpu);

 vcpu_require_state(vm, vcpuid, VCPU_RUNNING);
 error = VMRUN(vm->cookie, vcpuid, vcpu->nextrip, pmap, &evinfo);
 vcpu_require_state(vm, vcpuid, VCPU_FROZEN);

 save_guest_fpustate(vcpu);

 vmm_stat_incr(vm, vcpuid, VCPU_TOTAL_RUNTIME, rdtsc() - tscval);

 critical_exit();

 if (error == 0) {
  retu = 0;
  vcpu->nextrip = vme->rip + vme->inst_length;
  switch (vme->exitcode) {
  case 130:
   error = vm_handle_reqidle(vm, vcpuid, &retu);
   break;
  case 129:
   error = vm_handle_suspend(vm, vcpuid, &retu);
   break;
  case 135:
   vioapic_process_eoi(vm, vcpuid,
       vme->u.ioapic_eoi.vector);
   break;
  case 131:
   vm_handle_rendezvous(vm, vcpuid);
   error = 0;
   break;
  case 139:
   intr_disabled = ((vme->u.hlt.rflags & PSL_I) == 0);
   error = vm_handle_hlt(vm, vcpuid, intr_disabled, &retu);
   break;
  case 132:
   error = vm_handle_paging(vm, vcpuid, &retu);
   break;
  case 136:
   error = vm_handle_inst_emul(vm, vcpuid, &retu);
   break;
  case 138:
  case 137:
   error = vm_handle_inout(vm, vcpuid, vme, &retu);
   break;
  case 134:
  case 133:
  case 128:
   vm_inject_ud(vm, vcpuid);
   break;
  default:
   retu = 1;
   break;
  }
 }

 if (error == 0 && retu == 0)
  goto restart;

 VCPU_CTR2(vm, vcpuid, "retu %d/%d", error, vme->exitcode);


 bcopy(vme, &vmrun->vm_exit, sizeof(struct vm_exit));
 return (error);
}
