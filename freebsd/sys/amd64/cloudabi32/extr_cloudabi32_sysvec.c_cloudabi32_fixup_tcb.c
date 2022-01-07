
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t uint32_t ;
struct image_params {int dummy; } ;
typedef int register_t ;
typedef int cloudabi32_tcb_t ;
typedef int args ;


 int cloudabi32_fixup (int **,struct image_params*) ;
 int copyout (uintptr_t*,int *,int) ;
 int howmany (int,int) ;
 uintptr_t roundup (int,int) ;

__attribute__((used)) static int
cloudabi32_fixup_tcb(register_t **stack_base, struct image_params *imgp)
{
 int error;
 uint32_t args[2];


 error = cloudabi32_fixup(stack_base, imgp);
 if (error != 0)
  return (error);
 args[0] = (uintptr_t)*stack_base;
 args[1] = (uintptr_t)*stack_base +
     roundup(sizeof(cloudabi32_tcb_t), sizeof(register_t));
 *stack_base -= howmany(sizeof(args), sizeof(register_t));
 return (copyout(args, *stack_base, sizeof(args)));
}
