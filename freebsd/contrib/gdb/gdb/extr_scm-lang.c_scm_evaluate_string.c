
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
typedef scalar_t__ LONGEST ;


 struct value* call_function_by_hand (struct value*,int,struct value**) ;
 struct value* find_function_in_inferior (char*) ;
 struct value* value_allocate_space_in_inferior (int) ;
 scalar_t__ value_as_long (struct value*) ;
 int write_memory (scalar_t__,char*,int) ;

struct value *
scm_evaluate_string (char *str, int len)
{
  struct value *func;
  struct value *addr = value_allocate_space_in_inferior (len + 1);
  LONGEST iaddr = value_as_long (addr);
  write_memory (iaddr, str, len);

  write_memory (iaddr + len, "", 1);
  func = find_function_in_inferior ("scm_evstr");
  return call_function_by_hand (func, 1, &addr);
}
