
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
 struct value* call_function_by_hand (struct value*,int,struct value**) ;
 int check_typedef (int ) ;
 int error (char*,...) ;
 int strcpy (char*,char*) ;
 struct value* value_addr (struct value*) ;
 struct value* value_struct_elt (struct value**,struct value**,char*,int*,char*) ;
 struct value* value_zero (struct type*,int ) ;

struct value *
value_x_binop (struct value *arg1, struct value *arg2, enum exp_opcode op,
        enum exp_opcode otherop, enum noside noside)
{
  struct value **argvec;
  char *ptr;
  char tstr[13];
  int static_memfuncp;

  COERCE_REF (arg1);
  COERCE_REF (arg2);
  COERCE_ENUM (arg1);
  COERCE_ENUM (arg2);




  if (TYPE_CODE (check_typedef (VALUE_TYPE (arg1))) != TYPE_CODE_STRUCT)
    error ("Can't do that binary op on that type");

  argvec = (struct value **) alloca (sizeof (struct value *) * 4);
  argvec[1] = value_addr (arg1);
  argvec[2] = arg2;
  argvec[3] = 0;


  strcpy (tstr, "operator__");
  ptr = tstr + 8;
  switch (op)
    {
    case 151:
      strcpy (ptr, "+");
      break;
    case 129:
      strcpy (ptr, "-");
      break;
    case 133:
      strcpy (ptr, "*");
      break;
    case 145:
      strcpy (ptr, "/");
      break;
    case 131:
      strcpy (ptr, "%");
      break;
    case 137:
      strcpy (ptr, "<<");
      break;
    case 130:
      strcpy (ptr, ">>");
      break;
    case 148:
      strcpy (ptr, "&");
      break;
    case 147:
      strcpy (ptr, "|");
      break;
    case 146:
      strcpy (ptr, "^");
      break;
    case 139:
      strcpy (ptr, "&&");
      break;
    case 138:
      strcpy (ptr, "||");
      break;
    case 135:
      strcpy (ptr, "<?");
      break;
    case 136:
      strcpy (ptr, ">?");
      break;
    case 150:
      strcpy (ptr, "=");
      break;
    case 149:
      switch (otherop)
 {
 case 151:
   strcpy (ptr, "+=");
   break;
 case 129:
   strcpy (ptr, "-=");
   break;
 case 133:
   strcpy (ptr, "*=");
   break;
 case 145:
   strcpy (ptr, "/=");
   break;
 case 131:
   strcpy (ptr, "%=");
   break;
 case 148:
   strcpy (ptr, "&=");
   break;
 case 147:
   strcpy (ptr, "|=");
   break;
 case 146:
   strcpy (ptr, "^=");
   break;
 case 134:
 default:
   error ("Invalid binary operation specified.");
 }
      break;
    case 128:
      strcpy (ptr, "[]");
      break;
    case 144:
      strcpy (ptr, "==");
      break;
    case 132:
      strcpy (ptr, "!=");
      break;
    case 140:
      strcpy (ptr, "<");
      break;
    case 142:
      strcpy (ptr, ">");
      break;
    case 143:
      strcpy (ptr, ">=");
      break;
    case 141:
      strcpy (ptr, "<=");
      break;
    case 134:
    default:
      error ("Invalid binary operation specified.");
    }

  argvec[0] = value_struct_elt (&arg1, argvec + 1, tstr, &static_memfuncp, "structure");

  if (argvec[0])
    {
      if (static_memfuncp)
 {
   argvec[1] = argvec[0];
   argvec++;
 }
      if (noside == EVAL_AVOID_SIDE_EFFECTS)
 {
   struct type *return_type;
   return_type
     = TYPE_TARGET_TYPE (check_typedef (VALUE_TYPE (argvec[0])));
   return value_zero (return_type, VALUE_LVAL (arg1));
 }
      return call_function_by_hand (argvec[0], 2 - static_memfuncp, argvec + 1);
    }
  error ("member function %s not found", tstr);



}
