
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef enum type_code { ____Placeholder_type_code } type_code ;
typedef double ULONGEST ;
typedef double DOUBLEST ;


 int CHECK_TYPEDEF (struct type*) ;
 int TYPE_CODE (struct type*) ;
 int TYPE_CODE_FLT ;
 int TYPE_LENGTH (struct type*) ;
 int TYPE_UNSIGNED (struct type*) ;
 double extract_typed_floating (char const*,struct type*) ;
 int floatformat_from_type (struct type*) ;
 int floatformat_is_valid (int ,char const*) ;
 double unpack_long (struct type*,char const*) ;

DOUBLEST
unpack_double (struct type *type, const char *valaddr, int *invp)
{
  enum type_code code;
  int len;
  int nosign;

  *invp = 0;
  CHECK_TYPEDEF (type);
  code = TYPE_CODE (type);
  len = TYPE_LENGTH (type);
  nosign = TYPE_UNSIGNED (type);
  if (code == TYPE_CODE_FLT)
    {
      if (!floatformat_is_valid (floatformat_from_type (type), valaddr))
 {
   *invp = 1;
   return 0.0;
 }

      return extract_typed_floating (valaddr, type);
    }
  else if (nosign)
    {

      return (ULONGEST) unpack_long (type, valaddr);
    }
  else
    {

      return unpack_long (type, valaddr);
    }
}
