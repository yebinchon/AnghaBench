
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;

int
_rtld_get_stack_prot(void)
{

 return (PROT_EXEC | PROT_READ | PROT_WRITE);
}
