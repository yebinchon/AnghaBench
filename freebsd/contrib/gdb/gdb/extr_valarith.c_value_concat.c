
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;


 int COERCE_VARYING_ARRAY (struct value*,struct type*) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_BITSTRING ;
 scalar_t__ TYPE_CODE_BOOL ;
 scalar_t__ TYPE_CODE_CHAR ;
 scalar_t__ TYPE_CODE_INT ;
 scalar_t__ TYPE_CODE_STRING ;
 int TYPE_LENGTH (struct type*) ;
 int VALUE_CONTENTS (struct value*) ;
 int VALUE_TYPE (struct value*) ;
 scalar_t__ alloca (int) ;
 struct type* check_typedef (int ) ;
 int error (char*) ;
 int longest_to_int (int ) ;
 int memcpy (char*,int ,int) ;
 scalar_t__ unpack_long (struct type*,int ) ;
 int value_as_long (struct value*) ;
 struct value* value_string (char*,int) ;

struct value *
value_concat (struct value *arg1, struct value *arg2)
{
  struct value *inval1;
  struct value *inval2;
  struct value *outval = ((void*)0);
  int inval1len, inval2len;
  int count, idx;
  char *ptr;
  char inchar;
  struct type *type1 = check_typedef (VALUE_TYPE (arg1));
  struct type *type2 = check_typedef (VALUE_TYPE (arg2));

  COERCE_VARYING_ARRAY (arg1, type1);
  COERCE_VARYING_ARRAY (arg2, type2);







  if (TYPE_CODE (type2) == TYPE_CODE_INT)
    {
      struct type *tmp = type1;
      type1 = tmp;
      tmp = type2;
      inval1 = arg2;
      inval2 = arg1;
    }
  else
    {
      inval1 = arg1;
      inval2 = arg2;
    }



  if (TYPE_CODE (type1) == TYPE_CODE_INT)
    {


      if (TYPE_CODE (type2) == TYPE_CODE_STRING
   || TYPE_CODE (type2) == TYPE_CODE_CHAR)
 {
   count = longest_to_int (value_as_long (inval1));
   inval2len = TYPE_LENGTH (type2);
   ptr = (char *) alloca (count * inval2len);
   if (TYPE_CODE (type2) == TYPE_CODE_CHAR)
     {
       inchar = (char) unpack_long (type2,
        VALUE_CONTENTS (inval2));
       for (idx = 0; idx < count; idx++)
  {
    *(ptr + idx) = inchar;
  }
     }
   else
     {
       for (idx = 0; idx < count; idx++)
  {
    memcpy (ptr + (idx * inval2len), VALUE_CONTENTS (inval2),
     inval2len);
  }
     }
   outval = value_string (ptr, count * inval2len);
 }
      else if (TYPE_CODE (type2) == TYPE_CODE_BITSTRING
        || TYPE_CODE (type2) == TYPE_CODE_BOOL)
 {
   error ("unimplemented support for bitstring/boolean repeats");
 }
      else
 {
   error ("can't repeat values of that type");
 }
    }
  else if (TYPE_CODE (type1) == TYPE_CODE_STRING
    || TYPE_CODE (type1) == TYPE_CODE_CHAR)
    {

      if (TYPE_CODE (type2) != TYPE_CODE_STRING
   && TYPE_CODE (type2) != TYPE_CODE_CHAR)
 {
   error ("Strings can only be concatenated with other strings.");
 }
      inval1len = TYPE_LENGTH (type1);
      inval2len = TYPE_LENGTH (type2);
      ptr = (char *) alloca (inval1len + inval2len);
      if (TYPE_CODE (type1) == TYPE_CODE_CHAR)
 {
   *ptr = (char) unpack_long (type1, VALUE_CONTENTS (inval1));
 }
      else
 {
   memcpy (ptr, VALUE_CONTENTS (inval1), inval1len);
 }
      if (TYPE_CODE (type2) == TYPE_CODE_CHAR)
 {
   *(ptr + inval1len) =
     (char) unpack_long (type2, VALUE_CONTENTS (inval2));
 }
      else
 {
   memcpy (ptr + inval1len, VALUE_CONTENTS (inval2), inval2len);
 }
      outval = value_string (ptr, inval1len + inval2len);
    }
  else if (TYPE_CODE (type1) == TYPE_CODE_BITSTRING
    || TYPE_CODE (type1) == TYPE_CODE_BOOL)
    {

      if (TYPE_CODE (type2) != TYPE_CODE_BITSTRING
   && TYPE_CODE (type2) != TYPE_CODE_BOOL)
 {
   error ("Bitstrings or booleans can only be concatenated with other bitstrings or booleans.");
 }
      error ("unimplemented support for bitstring/boolean concatenation.");
    }
  else
    {

      error ("illegal operands for concatenation.");
    }
  return (outval);
}
