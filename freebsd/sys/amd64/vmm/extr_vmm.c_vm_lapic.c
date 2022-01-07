
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm {TYPE_1__* vcpu; } ;
struct vlapic {int dummy; } ;
struct TYPE_2__ {struct vlapic* vlapic; } ;



struct vlapic *
vm_lapic(struct vm *vm, int cpu)
{
 return (vm->vcpu[cpu].vlapic);
}
