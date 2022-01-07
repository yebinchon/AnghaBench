
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
typedef int CORE_ADDR ;


 int value_push (int ,struct value*) ;

CORE_ADDR
legacy_push_arguments (int nargs, struct value **args, CORE_ADDR sp,
         int struct_return, CORE_ADDR struct_addr)
{

  int i;
  for (i = nargs - 1; i >= 0; i--)
    sp = value_push (sp, args[i]);
  return sp;
}
