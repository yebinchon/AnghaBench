
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int maxcpus; int cookie; struct vcpu* vcpu; } ;
struct vcpu {int stats; int guestfpu; int guest_xcr0; scalar_t__ exception_pending; scalar_t__ extint_pending; scalar_t__ nmi_pending; scalar_t__ exitintinfo; scalar_t__ reqidle; int vlapic; int hostcpu; int state; } ;


 int KASSERT (int,char*) ;
 int NOCPU ;
 int VCPU_IDLE ;
 int VLAPIC_INIT (int ,int) ;
 int X2APIC_DISABLED ;
 int XFEATURE_ENABLED_X87 ;
 int fpu_save_area_alloc () ;
 int fpu_save_area_reset (int ) ;
 int vcpu_lock_init (struct vcpu*) ;
 int vcpu_lock_initialized (struct vcpu*) ;
 int vm_set_x2apic_state (struct vm*,int,int ) ;
 int vmm_stat_alloc () ;
 int vmm_stat_init (int ) ;

__attribute__((used)) static void
vcpu_init(struct vm *vm, int vcpu_id, bool create)
{
 struct vcpu *vcpu;

 KASSERT(vcpu_id >= 0 && vcpu_id < vm->maxcpus,
     ("vcpu_init: invalid vcpu %d", vcpu_id));

 vcpu = &vm->vcpu[vcpu_id];

 if (create) {
  KASSERT(!vcpu_lock_initialized(vcpu), ("vcpu %d already "
      "initialized", vcpu_id));
  vcpu_lock_init(vcpu);
  vcpu->state = VCPU_IDLE;
  vcpu->hostcpu = NOCPU;
  vcpu->guestfpu = fpu_save_area_alloc();
  vcpu->stats = vmm_stat_alloc();
 }

 vcpu->vlapic = VLAPIC_INIT(vm->cookie, vcpu_id);
 vm_set_x2apic_state(vm, vcpu_id, X2APIC_DISABLED);
 vcpu->reqidle = 0;
 vcpu->exitintinfo = 0;
 vcpu->nmi_pending = 0;
 vcpu->extint_pending = 0;
 vcpu->exception_pending = 0;
 vcpu->guest_xcr0 = XFEATURE_ENABLED_X87;
 fpu_save_area_reset(vcpu->guestfpu);
 vmm_stat_init(vcpu->stats);
}
