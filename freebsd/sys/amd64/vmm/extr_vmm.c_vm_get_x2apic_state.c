
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm {int maxcpus; TYPE_1__* vcpu; } ;
typedef enum x2apic_state { ____Placeholder_x2apic_state } x2apic_state ;
struct TYPE_2__ {int x2apic_state; } ;


 int EINVAL ;

int
vm_get_x2apic_state(struct vm *vm, int vcpuid, enum x2apic_state *state)
{
 if (vcpuid < 0 || vcpuid >= vm->maxcpus)
  return (EINVAL);

 *state = vm->vcpu[vcpuid].x2apic_state;

 return (0);
}
