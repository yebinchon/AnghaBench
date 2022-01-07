
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
typedef int CORE_ADDR ;


 int VALUE_CONTENTS_RAW (struct value*) ;
 struct value* allocate_value (struct type*) ;
 int store_typed_address (int ,struct type*,int ) ;

struct value *
value_from_pointer (struct type *type, CORE_ADDR addr)
{
  struct value *val = allocate_value (type);
  store_typed_address (VALUE_CONTENTS_RAW (val), type, addr);
  return val;
}
