
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int TYPE_LENGTH (struct type*) ;

int
generic_use_struct_convention (int gcc_p, struct type *value_type)
{
  return !((gcc_p == 1)
    && (TYPE_LENGTH (value_type) == 1
        || TYPE_LENGTH (value_type) == 2
        || TYPE_LENGTH (value_type) == 4
        || TYPE_LENGTH (value_type) == 8));
}
