
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
typedef enum type_code { ____Placeholder_type_code } type_code ;
typedef int DOUBLEST ;


 int TYPE_CODE (struct type*) ;
 int TYPE_CODE_FLT ;
 int TYPE_LENGTH (struct type*) ;
 int VALUE_CONTENTS_RAW (struct value*) ;
 struct value* allocate_value (struct type*) ;
 struct type* check_typedef (struct type*) ;
 int error (char*) ;
 int store_typed_floating (int ,struct type*,int ) ;

struct value *
value_from_double (struct type *type, DOUBLEST num)
{
  struct value *val = allocate_value (type);
  struct type *base_type = check_typedef (type);
  enum type_code code = TYPE_CODE (base_type);
  int len = TYPE_LENGTH (base_type);

  if (code == TYPE_CODE_FLT)
    {
      store_typed_floating (VALUE_CONTENTS_RAW (val), base_type, num);
    }
  else
    error ("Unexpected type encountered for floating constant.");

  return val;
}
