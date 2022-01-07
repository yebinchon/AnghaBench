
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmspace {int dummy; } ;
struct vm {struct vmspace* vmspace; } ;



struct vmspace *
vm_get_vmspace(struct vm *vm)
{

 return (vm->vmspace);
}
