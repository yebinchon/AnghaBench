
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
typedef enum noside { ____Placeholder_noside } noside ;
typedef enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;


 int COERCE_ENUM (struct value*) ;
 int COERCE_REF (struct value*) ;
 int EVAL_AVOID_SIDE_EFFECTS ;
 scalar_t__ TYPE_CODE (int ) ;
 scalar_t__ TYPE_CODE_STRUCT ;
 struct type* TYPE_TARGET_TYPE (int ) ;
 int VALUE_LVAL (struct value*) ;
 int VALUE_TYPE (struct value*) ;
 scalar_t__ alloca (int) ;
 int builtin_type_int ;
 struct value* call_function_by_hand (struct value*,int,struct value**) ;
 int check_typedef (int ) ;
 int error (char*,...) ;
 int strcpy (char*,char*) ;
 struct value* value_addr (struct value*) ;
 struct value* value_from_longest (int ,int ) ;
 struct value* value_struct_elt (struct value**,struct value**,char*,int*,char*) ;
 struct value* value_zero (struct type*,int ) ;

struct value *
value_x_unop (struct value *arg1, enum exp_opcode op, enum noside noside)
{
  struct value **argvec;
  char *ptr, *mangle_ptr;
  char tstr[13], mangle_tstr[13];
  int static_memfuncp, nargs;

  COERCE_REF (arg1);
  COERCE_ENUM (arg1);




  if (TYPE_CODE (check_typedef (VALUE_TYPE (arg1))) != TYPE_CODE_STRUCT)
    error ("Can't do that unary op on that type");

  argvec = (struct value **) alloca (sizeof (struct value *) * 4);
  argvec[1] = value_addr (arg1);
  argvec[2] = 0;

  nargs = 1;


  strcpy (tstr, "operator__");
  ptr = tstr + 8;
  strcpy (mangle_tstr, "__");
  mangle_ptr = mangle_tstr + 2;
  switch (op)
    {
    case 128:
      strcpy (ptr, "++");
      break;
    case 129:
      strcpy (ptr, "--");
      break;
    case 130:
      strcpy (ptr, "++");
      argvec[2] = value_from_longest (builtin_type_int, 0);
      argvec[3] = 0;
      nargs ++;
      break;
    case 131:
      strcpy (ptr, "--");
      argvec[2] = value_from_longest (builtin_type_int, 0);
      argvec[3] = 0;
      nargs ++;
      break;
    case 133:
      strcpy (ptr, "!");
      break;
    case 135:
      strcpy (ptr, "~");
      break;
    case 132:
      strcpy (ptr, "-");
      break;
    case 134:
      strcpy (ptr, "*");
      break;
    default:
      error ("Invalid unary operation specified.");
    }

  argvec[0] = value_struct_elt (&arg1, argvec + 1, tstr, &static_memfuncp, "structure");

  if (argvec[0])
    {
      if (static_memfuncp)
 {
   argvec[1] = argvec[0];
   nargs --;
   argvec++;
 }
      if (noside == EVAL_AVOID_SIDE_EFFECTS)
 {
   struct type *return_type;
   return_type
     = TYPE_TARGET_TYPE (check_typedef (VALUE_TYPE (argvec[0])));
   return value_zero (return_type, VALUE_LVAL (arg1));
 }
      return call_function_by_hand (argvec[0], nargs, argvec + 1);
    }
  error ("member function %s not found", tstr);
  return 0;
}
