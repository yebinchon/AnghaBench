
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int dummy; } ;
typedef enum vcpu_state { ____Placeholder_vcpu_state } vcpu_state ;


 int panic (char*,int,int) ;
 int vcpu_set_state (struct vm*,int,int,int) ;

__attribute__((used)) static void
vcpu_require_state(struct vm *vm, int vcpuid, enum vcpu_state newstate)
{
 int error;

 if ((error = vcpu_set_state(vm, vcpuid, newstate, 0)) != 0)
  panic("Error %d setting state to %d\n", error, newstate);
}
