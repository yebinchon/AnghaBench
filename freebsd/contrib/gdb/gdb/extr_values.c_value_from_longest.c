
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
typedef enum type_code { ____Placeholder_type_code } type_code ;
typedef int LONGEST ;
typedef int CORE_ADDR ;


 int TYPE_CODE (struct type*) ;
 int TYPE_LENGTH (struct type*) ;
 int VALUE_CONTENTS_RAW (struct value*) ;
 struct value* allocate_value (struct type*) ;
 struct type* check_typedef (struct type*) ;
 int error (char*,int) ;
 int store_signed_integer (int ,int,int ) ;
 int store_typed_address (int ,struct type*,int ) ;

struct value *
value_from_longest (struct type *type, LONGEST num)
{
  struct value *val = allocate_value (type);
  enum type_code code;
  int len;
retry:
  code = TYPE_CODE (type);
  len = TYPE_LENGTH (type);

  switch (code)
    {
    case 128:
      type = check_typedef (type);
      goto retry;
    case 132:
    case 134:
    case 133:
    case 135:
    case 130:
      store_signed_integer (VALUE_CONTENTS_RAW (val), len, num);
      break;

    case 129:
    case 131:
      store_typed_address (VALUE_CONTENTS_RAW (val), type, (CORE_ADDR) num);
      break;

    default:
      error ("Unexpected type (%d) encountered for integer constant.", code);
    }
  return val;
}
