
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
typedef enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;
typedef unsigned int ULONGEST ;
typedef unsigned int LONGEST ;
typedef unsigned int DOUBLEST ;
 int COERCE_ENUM (struct value*) ;
 int COERCE_REF (struct value*) ;
 unsigned int HOST_CHAR_BIT ;
 int TARGET_DOUBLE_BIT ;
 unsigned int TARGET_LONG_BIT ;
 int TRUNCATION_TOWARDS_ZERO ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_BOOL ;
 scalar_t__ TYPE_CODE_CHAR ;
 scalar_t__ TYPE_CODE_FLT ;
 scalar_t__ TYPE_CODE_INT ;
 scalar_t__ TYPE_CODE_RANGE ;
 unsigned int TYPE_LENGTH (struct type*) ;
 int TYPE_UNSIGNED (struct type*) ;
 int VALUE_CONTENTS_RAW (struct value*) ;
 struct type* VALUE_TYPE (struct value*) ;
 struct value* allocate_value (struct type*) ;
 struct type* builtin_type_double ;
 struct type* builtin_type_int ;
 struct type* builtin_type_long ;
 struct type* builtin_type_long_double ;
 struct type* builtin_type_long_long ;
 struct type* builtin_type_unsigned_long ;
 struct type* builtin_type_unsigned_long_long ;
 struct type* check_typedef (struct type*) ;
 int errno ;
 int error (char*,...) ;
 unsigned int pow (unsigned int,unsigned int) ;
 int safe_strerror (int ) ;
 int store_signed_integer (int ,unsigned int,unsigned int) ;
 int store_typed_floating (int ,struct type*,unsigned int) ;
 int store_unsigned_integer (int ,unsigned int,unsigned int) ;
 unsigned int value_as_double (struct value*) ;
 unsigned int value_as_long (struct value*) ;

struct value *
value_binop (struct value *arg1, struct value *arg2, enum exp_opcode op)
{
  struct value *val;
  struct type *type1, *type2;

  COERCE_REF (arg1);
  COERCE_REF (arg2);
  COERCE_ENUM (arg1);
  COERCE_ENUM (arg2);
  type1 = check_typedef (VALUE_TYPE (arg1));
  type2 = check_typedef (VALUE_TYPE (arg2));

  if ((TYPE_CODE (type1) != TYPE_CODE_FLT
       && TYPE_CODE (type1) != TYPE_CODE_CHAR
       && TYPE_CODE (type1) != TYPE_CODE_INT
       && TYPE_CODE (type1) != TYPE_CODE_BOOL
       && TYPE_CODE (type1) != TYPE_CODE_RANGE)
      ||
      (TYPE_CODE (type2) != TYPE_CODE_FLT
       && TYPE_CODE (type2) != TYPE_CODE_CHAR
       && TYPE_CODE (type2) != TYPE_CODE_INT
       && TYPE_CODE (type2) != TYPE_CODE_BOOL
       && TYPE_CODE (type2) != TYPE_CODE_RANGE))
    error ("Argument to arithmetic operation not a number or boolean.");

  if (TYPE_CODE (type1) == TYPE_CODE_FLT
      ||
      TYPE_CODE (type2) == TYPE_CODE_FLT)
    {



      DOUBLEST v1, v2, v = 0;
      v1 = value_as_double (arg1);
      v2 = value_as_double (arg2);
      switch (op)
 {
 case 146:
   v = v1 + v2;
   break;

 case 128:
   v = v1 - v2;
   break;

 case 132:
   v = v1 * v2;
   break;

 case 142:
   v = v1 / v2;
   break;

        case 140:
          v = pow (v1, v2);
          if (errno)
            error ("Cannot perform exponentiation: %s", safe_strerror (errno));
          break;

 default:
   error ("Integer-only operation on floating point number.");
 }




      if (TYPE_LENGTH (type1) * 8 > TARGET_DOUBLE_BIT
   || TYPE_LENGTH (type2) * 8 > TARGET_DOUBLE_BIT)
 val = allocate_value (builtin_type_long_double);
      else
 val = allocate_value (builtin_type_double);

      store_typed_floating (VALUE_CONTENTS_RAW (val), VALUE_TYPE (val), v);
    }
  else if (TYPE_CODE (type1) == TYPE_CODE_BOOL
    &&
    TYPE_CODE (type2) == TYPE_CODE_BOOL)
    {
      LONGEST v1, v2, v = 0;
      v1 = value_as_long (arg1);
      v2 = value_as_long (arg2);

      switch (op)
 {
 case 145:
   v = v1 & v2;
   break;

 case 144:
   v = v1 | v2;
   break;

 case 143:
   v = v1 ^ v2;
          break;

        case 141:
          v = v1 == v2;
          break;

        case 131:
          v = v1 != v2;
   break;

 default:
   error ("Invalid operation on booleans.");
 }

      val = allocate_value (type1);
      store_signed_integer (VALUE_CONTENTS_RAW (val),
       TYPE_LENGTH (type1),
       v);
    }
  else




    {
      unsigned int promoted_len1 = TYPE_LENGTH (type1);
      unsigned int promoted_len2 = TYPE_LENGTH (type2);
      int is_unsigned1 = TYPE_UNSIGNED (type1);
      int is_unsigned2 = TYPE_UNSIGNED (type2);
      unsigned int result_len;
      int unsigned_operation;



      if (promoted_len1 < TYPE_LENGTH (builtin_type_int))
 {
   is_unsigned1 = 0;
   promoted_len1 = TYPE_LENGTH (builtin_type_int);
 }
      if (promoted_len2 < TYPE_LENGTH (builtin_type_int))
 {
   is_unsigned2 = 0;
   promoted_len2 = TYPE_LENGTH (builtin_type_int);
 }






      if (promoted_len1 > promoted_len2)
 {
   unsigned_operation = is_unsigned1;
   result_len = promoted_len1;
 }
      else if (promoted_len2 > promoted_len1)
 {
   unsigned_operation = is_unsigned2;
   result_len = promoted_len2;
 }
      else
 {
   unsigned_operation = is_unsigned1 || is_unsigned2;
   result_len = promoted_len1;
 }

      if (unsigned_operation)
 {
   ULONGEST v1, v2, v = 0;
   v1 = (ULONGEST) value_as_long (arg1);
   v2 = (ULONGEST) value_as_long (arg2);


   if (result_len < sizeof (ULONGEST))
     {
       v1 &= ((LONGEST) 1 << HOST_CHAR_BIT * result_len) - 1;
       v2 &= ((LONGEST) 1 << HOST_CHAR_BIT * result_len) - 1;
     }

   switch (op)
     {
     case 146:
       v = v1 + v2;
       break;

     case 128:
       v = v1 - v2;
       break;

     case 132:
       v = v1 * v2;
       break;

     case 142:
       v = v1 / v2;
       break;

            case 140:
              v = pow (v1, v2);
              if (errno)
                error ("Cannot perform exponentiation: %s", safe_strerror (errno));
              break;

     case 130:
       v = v1 % v2;
       break;

     case 133:


       if (v2 == 0)
  {
    v = v1;
  }
       else
  {
    v = v1 / v2;

    v = v1 - (v2 * v);
  }
       break;

     case 136:
       v = v1 << v2;
       break;

     case 129:
       v = v1 >> v2;
       break;

     case 145:
       v = v1 & v2;
       break;

     case 144:
       v = v1 | v2;
       break;

     case 143:
       v = v1 ^ v2;
       break;

     case 138:
       v = v1 && v2;
       break;

     case 137:
       v = v1 || v2;
       break;

     case 134:
       v = v1 < v2 ? v1 : v2;
       break;

     case 135:
       v = v1 > v2 ? v1 : v2;
       break;

     case 141:
       v = v1 == v2;
       break;

            case 131:
              v = v1 != v2;
              break;

     case 139:
       v = v1 < v2;
       break;

     default:
       error ("Invalid binary operation on numbers.");
     }
   val = allocate_value
     (result_len > TARGET_LONG_BIT / HOST_CHAR_BIT
      ? builtin_type_unsigned_long_long
      : builtin_type_unsigned_long);
   store_unsigned_integer (VALUE_CONTENTS_RAW (val),
      TYPE_LENGTH (VALUE_TYPE (val)),
      v);
 }
      else
 {
   LONGEST v1, v2, v = 0;
   v1 = value_as_long (arg1);
   v2 = value_as_long (arg2);

   switch (op)
     {
     case 146:
       v = v1 + v2;
       break;

     case 128:
       v = v1 - v2;
       break;

     case 132:
       v = v1 * v2;
       break;

     case 142:
       v = v1 / v2;
              break;

            case 140:
              v = pow (v1, v2);
              if (errno)
                error ("Cannot perform exponentiation: %s", safe_strerror (errno));
       break;

     case 130:
       v = v1 % v2;
       break;

     case 133:


       if (v2 == 0)
  {
    v = v1;
  }
       else
  {
    v = v1 / v2;

    if (TRUNCATION_TOWARDS_ZERO && (v < 0) && ((v1 % v2) != 0))
      {
        v--;
      }
    v = v1 - (v2 * v);
  }
       break;

     case 136:
       v = v1 << v2;
       break;

     case 129:
       v = v1 >> v2;
       break;

     case 145:
       v = v1 & v2;
       break;

     case 144:
       v = v1 | v2;
       break;

     case 143:
       v = v1 ^ v2;
       break;

     case 138:
       v = v1 && v2;
       break;

     case 137:
       v = v1 || v2;
       break;

     case 134:
       v = v1 < v2 ? v1 : v2;
       break;

     case 135:
       v = v1 > v2 ? v1 : v2;
       break;

     case 141:
       v = v1 == v2;
       break;

     case 139:
       v = v1 < v2;
       break;

     default:
       error ("Invalid binary operation on numbers.");
     }
   val = allocate_value
     (result_len > TARGET_LONG_BIT / HOST_CHAR_BIT
      ? builtin_type_long_long
      : builtin_type_long);
   store_signed_integer (VALUE_CONTENTS_RAW (val),
    TYPE_LENGTH (VALUE_TYPE (val)),
    v);
 }
    }

  return val;
}
