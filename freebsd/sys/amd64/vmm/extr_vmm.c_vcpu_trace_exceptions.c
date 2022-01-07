
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int dummy; } ;


 int trace_guest_exceptions ;

int
vcpu_trace_exceptions(struct vm *vm, int vcpuid)
{

 return (trace_guest_exceptions);
}
