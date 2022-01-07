
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;


 int TYPE_TARGET_TYPE (struct type*) ;
 scalar_t__ VALUE_ADDRESS (struct value*) ;
 scalar_t__ VALUE_LVAL (struct value*) ;
 scalar_t__ VALUE_OFFSET (struct value*) ;
 int VALUE_TYPE (struct value*) ;
 struct type* check_typedef (int ) ;
 int error (char*) ;
 int lookup_pointer_type (int ) ;
 scalar_t__ lval_memory ;
 struct value* value_from_pointer (int ,scalar_t__) ;

struct value *
value_coerce_array (struct value *arg1)
{
  struct type *type = check_typedef (VALUE_TYPE (arg1));

  if (VALUE_LVAL (arg1) != lval_memory)
    error ("Attempt to take address of value not located in memory.");

  return value_from_pointer (lookup_pointer_type (TYPE_TARGET_TYPE (type)),
        (VALUE_ADDRESS (arg1) + VALUE_OFFSET (arg1)));
}
