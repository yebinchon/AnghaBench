
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
typedef enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;


 int BINOP_ASSIGN ;
 int BINOP_CONCAT ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_REF ;
 scalar_t__ TYPE_CODE_STRUCT ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 int VALUE_TYPE (struct value*) ;
 struct type* check_typedef (int ) ;

int
binop_user_defined_p (enum exp_opcode op, struct value *arg1, struct value *arg2)
{
  struct type *type1, *type2;
  if (op == BINOP_ASSIGN || op == BINOP_CONCAT)
    return 0;
  type1 = check_typedef (VALUE_TYPE (arg1));
  type2 = check_typedef (VALUE_TYPE (arg2));
  return (TYPE_CODE (type1) == TYPE_CODE_STRUCT
   || TYPE_CODE (type2) == TYPE_CODE_STRUCT
   || (TYPE_CODE (type1) == TYPE_CODE_REF
       && TYPE_CODE (TYPE_TARGET_TYPE (type1)) == TYPE_CODE_STRUCT)
   || (TYPE_CODE (type2) == TYPE_CODE_REF
       && TYPE_CODE (TYPE_TARGET_TYPE (type2)) == TYPE_CODE_STRUCT));
}
