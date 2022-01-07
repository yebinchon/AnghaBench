
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
typedef int CORE_ADDR ;


 int ADDR_BITS_REMOVE (int ) ;
 int COERCE_ARRAY (struct value*) ;
 int INTEGER_TO_ADDRESS (int ,int ) ;
 scalar_t__ INTEGER_TO_ADDRESS_P () ;
 scalar_t__ TYPE_CODE (int ) ;
 scalar_t__ TYPE_CODE_FUNC ;
 scalar_t__ TYPE_CODE_METHOD ;
 scalar_t__ TYPE_CODE_PTR ;
 scalar_t__ TYPE_CODE_REF ;
 int VALUE_ADDRESS (struct value*) ;
 int VALUE_CONTENTS (struct value*) ;
 int VALUE_TYPE (struct value*) ;
 int unpack_long (int ,int ) ;
 int value_as_long (struct value*) ;

CORE_ADDR
value_as_address (struct value *val)
{
  if (TYPE_CODE (VALUE_TYPE (val)) == TYPE_CODE_FUNC
      || TYPE_CODE (VALUE_TYPE (val)) == TYPE_CODE_METHOD)
    return VALUE_ADDRESS (val);

  COERCE_ARRAY (val);
  if (TYPE_CODE (VALUE_TYPE (val)) != TYPE_CODE_PTR
      && TYPE_CODE (VALUE_TYPE (val)) != TYPE_CODE_REF
      && INTEGER_TO_ADDRESS_P ())
    return INTEGER_TO_ADDRESS (VALUE_TYPE (val), VALUE_CONTENTS (val));

  return unpack_long (VALUE_TYPE (val), VALUE_CONTENTS (val));

}
