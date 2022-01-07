
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int dummy; } ;


 int M_VM ;
 int free (struct vm*,int ) ;
 int vm_cleanup (struct vm*,int) ;

void
vm_destroy(struct vm *vm)
{
 vm_cleanup(vm, 1);
 free(vm, M_VM);
}
