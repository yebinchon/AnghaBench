
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {struct vcpu* vcpu; } ;
struct vcpu {int state; int reqidle; scalar_t__ hostcpu; int mtx; } ;
typedef enum vcpu_state { ____Placeholder_vcpu_state } vcpu_state ;


 int EBUSY ;
 int KASSERT (int,char*) ;
 scalar_t__ NOCPU ;
 int VCPU_CTR1 (struct vm*,int,char*,int ) ;
 int VCPU_CTR2 (struct vm*,int,char*,int ,int ) ;




 scalar_t__ curcpu ;
 int hz ;
 int msleep_spin (int*,int *,char*,int ) ;
 int vcpu_assert_locked (struct vcpu*) ;
 int vcpu_notify_event_locked (struct vcpu*,int) ;
 int vcpu_state2str (int) ;
 int wakeup (int*) ;

__attribute__((used)) static int
vcpu_set_state_locked(struct vm *vm, int vcpuid, enum vcpu_state newstate,
    bool from_idle)
{
 struct vcpu *vcpu;
 int error;

 vcpu = &vm->vcpu[vcpuid];
 vcpu_assert_locked(vcpu);






 if (from_idle) {
  while (vcpu->state != 130) {
   vcpu->reqidle = 1;
   vcpu_notify_event_locked(vcpu, 0);
   VCPU_CTR1(vm, vcpuid, "vcpu state change from %s to "
       "idle requested", vcpu_state2str(vcpu->state));
   msleep_spin(&vcpu->state, &vcpu->mtx, "vmstat", hz);
  }
 } else {
  KASSERT(vcpu->state != 130, ("invalid transition from "
      "vcpu idle state"));
 }

 if (vcpu->state == 129) {
  KASSERT(vcpu->hostcpu == curcpu, ("curcpu %d and hostcpu %d "
      "mismatch for running vcpu", curcpu, vcpu->hostcpu));
 } else {
  KASSERT(vcpu->hostcpu == NOCPU, ("Invalid hostcpu %d for a "
      "vcpu that is not running", vcpu->hostcpu));
 }







 switch (vcpu->state) {
 case 130:
 case 129:
 case 128:
  error = (newstate != 131);
  break;
 case 131:
  error = (newstate == 131);
  break;
 default:
  error = 1;
  break;
 }

 if (error)
  return (EBUSY);

 VCPU_CTR2(vm, vcpuid, "vcpu state changed from %s to %s",
     vcpu_state2str(vcpu->state), vcpu_state2str(newstate));

 vcpu->state = newstate;
 if (newstate == 129)
  vcpu->hostcpu = curcpu;
 else
  vcpu->hostcpu = NOCPU;

 if (newstate == 130)
  wakeup(&vcpu->state);

 return (0);
}
