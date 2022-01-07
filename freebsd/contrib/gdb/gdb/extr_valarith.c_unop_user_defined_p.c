
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
typedef enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_REF ;
 scalar_t__ TYPE_CODE_STRUCT ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 int UNOP_ADDR ;
 int VALUE_TYPE (struct value*) ;
 struct type* check_typedef (int ) ;

int
unop_user_defined_p (enum exp_opcode op, struct value *arg1)
{
  struct type *type1;
  if (op == UNOP_ADDR)
    return 0;
  type1 = check_typedef (VALUE_TYPE (arg1));
  for (;;)
    {
      if (TYPE_CODE (type1) == TYPE_CODE_STRUCT)
 return 1;
      else if (TYPE_CODE (type1) == TYPE_CODE_REF)
 type1 = TYPE_TARGET_TYPE (type1);
      else
 return 0;
    }
}
