
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stack_prot ;

int
_rtld_get_stack_prot(void)
{

 return (stack_prot);
}
