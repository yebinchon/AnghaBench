
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vm {int dummy; } ;


 int vm_get_register (struct vm*,int,int,int *) ;

__attribute__((used)) static int
vm_get_register_set(struct vm *vm, int vcpu, unsigned int count, int *regnum,
    uint64_t *regval)
{
 int error, i;

 error = 0;
 for (i = 0; i < count; i++) {
  error = vm_get_register(vm, vcpu, regnum[i], &regval[i]);
  if (error)
   break;
 }
 return (error);
}
