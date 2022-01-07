
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef enum return_value_convention { ____Placeholder_return_value_convention } return_value_convention ;


 int RETURN_VALUE_REGISTER_CONVENTION ;
 int RETURN_VALUE_STRUCT_CONVENTION ;
 int TYPE_CODE (struct type*) ;



 int TYPE_LENGTH (struct type*) ;

__attribute__((used)) static enum return_value_convention
s390_return_value_convention (struct gdbarch *gdbarch, struct type *type)
{
  int length = TYPE_LENGTH (type);
  if (length > 8)
    return RETURN_VALUE_STRUCT_CONVENTION;

  switch (TYPE_CODE (type))
    {
    case 129:
    case 128:
    case 130:
      return RETURN_VALUE_STRUCT_CONVENTION;

    default:
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
}
