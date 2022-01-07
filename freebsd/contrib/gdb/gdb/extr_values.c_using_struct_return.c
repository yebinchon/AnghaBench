
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef enum type_code { ____Placeholder_type_code } type_code ;


 scalar_t__ RETURN_VALUE_ON_STACK (struct type*) ;
 scalar_t__ RETURN_VALUE_STRUCT_CONVENTION ;
 int TYPE_CODE (struct type*) ;
 int TYPE_CODE_ARRAY ;
 int TYPE_CODE_ERROR ;
 int TYPE_CODE_STRUCT ;
 int TYPE_CODE_UNION ;
 int TYPE_CODE_VOID ;
 int USE_STRUCT_CONVENTION (int,struct type*) ;
 int current_gdbarch ;
 int error (char*) ;
 scalar_t__ gdbarch_return_value (int ,struct type*,int *,int *,int *) ;
 int gdbarch_return_value_p (int ) ;

int
using_struct_return (struct type *value_type, int gcc_p)
{
  enum type_code code = TYPE_CODE (value_type);

  if (code == TYPE_CODE_ERROR)
    error ("Function return type unknown.");

  if (code == TYPE_CODE_VOID)


    return 0;

  if (!gdbarch_return_value_p (current_gdbarch))
    {




      if (code == TYPE_CODE_STRUCT
   || code == TYPE_CODE_UNION
   || code == TYPE_CODE_ARRAY
   || RETURN_VALUE_ON_STACK (value_type))
 return USE_STRUCT_CONVENTION (gcc_p, value_type);
      else
 return 0;
    }


  return (gdbarch_return_value (current_gdbarch, value_type,
    ((void*)0), ((void*)0), ((void*)0))
   == RETURN_VALUE_STRUCT_CONVENTION);
}
