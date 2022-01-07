
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
typedef int LONGEST ;


 int BINOP_SUB ;
 int COERCE_NUMBER (struct value*) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_INT ;
 scalar_t__ TYPE_CODE_PTR ;
 scalar_t__ TYPE_LENGTH (struct type*) ;
 int TYPE_TARGET_TYPE (struct type*) ;
 int VALUE_TYPE (struct value*) ;
 int builtin_type_long ;
 struct type* check_typedef (int ) ;
 int error (char*) ;
 int find_size_for_pointer_math (struct type*) ;
 scalar_t__ value_as_address (struct value*) ;
 int value_as_long (struct value*) ;
 struct value* value_binop (struct value*,struct value*,int ) ;
 struct value* value_from_longest (int ,int) ;
 struct value* value_from_pointer (struct type*,scalar_t__) ;

struct value *
value_sub (struct value *arg1, struct value *arg2)
{
  struct type *type1, *type2;
  COERCE_NUMBER (arg1);
  COERCE_NUMBER (arg2);
  type1 = check_typedef (VALUE_TYPE (arg1));
  type2 = check_typedef (VALUE_TYPE (arg2));

  if (TYPE_CODE (type1) == TYPE_CODE_PTR)
    {
      if (TYPE_CODE (type2) == TYPE_CODE_INT)
 {

   LONGEST sz = find_size_for_pointer_math (type1);

   return value_from_pointer (type1,
         (value_as_address (arg1)
          - (sz * value_as_long (arg2))));
 }
      else if (TYPE_CODE (type2) == TYPE_CODE_PTR
        && TYPE_LENGTH (check_typedef (TYPE_TARGET_TYPE (type1)))
        == TYPE_LENGTH (check_typedef (TYPE_TARGET_TYPE (type2))))
 {

   LONGEST sz = TYPE_LENGTH (check_typedef (TYPE_TARGET_TYPE (type1)));
   return value_from_longest
     (builtin_type_long,
      (value_as_long (arg1) - value_as_long (arg2)) / sz);
 }
      else
 {
   error ("First argument of `-' is a pointer and second argument is neither\nan integer nor a pointer of the same type.");


 }
    }

  return value_binop (arg1, arg2, BINOP_SUB);
}
