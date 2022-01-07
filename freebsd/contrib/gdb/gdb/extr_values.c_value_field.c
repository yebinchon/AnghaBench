
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;


 int VALUE_TYPE (struct value*) ;
 struct value* value_primitive_field (struct value*,int ,int,int ) ;

struct value *
value_field (struct value *arg1, int fieldno)
{
  return value_primitive_field (arg1, 0, fieldno, VALUE_TYPE (arg1));
}
