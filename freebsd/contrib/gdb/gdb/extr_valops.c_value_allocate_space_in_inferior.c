
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
typedef int LONGEST ;


 int NAME_OF_MALLOC ;
 int builtin_type_int ;
 struct value* call_function_by_hand (struct value*,int,struct value**) ;
 int error (char*) ;
 struct value* find_function_in_inferior (int ) ;
 int target_has_execution ;
 struct value* value_from_longest (int ,int ) ;
 scalar_t__ value_logical_not (struct value*) ;

struct value *
value_allocate_space_in_inferior (int len)
{
  struct value *blocklen;
  struct value *val = find_function_in_inferior (NAME_OF_MALLOC);

  blocklen = value_from_longest (builtin_type_int, (LONGEST) len);
  val = call_function_by_hand (val, 1, &blocklen);
  if (value_logical_not (val))
    {
      if (!target_has_execution)
 error ("No memory available to program now: you need to start the target first");
      else
 error ("No memory available to program: call to malloc failed");
    }
  return val;
}
