
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef enum type_code { ____Placeholder_type_code } type_code ;


 int TYPE_CODE (struct type*) ;
 int TYPE_CODE_BOOL ;
 int TYPE_CODE_CHAR ;
 int TYPE_CODE_ENUM ;
 int TYPE_CODE_INT ;
 int TYPE_CODE_RANGE ;

__attribute__((used)) static int
is_integer_like (struct type *type)
{
  enum type_code code = TYPE_CODE (type);

  return (code == TYPE_CODE_INT
          || code == TYPE_CODE_ENUM
          || code == TYPE_CODE_RANGE
          || code == TYPE_CODE_CHAR
          || code == TYPE_CODE_BOOL);
}
