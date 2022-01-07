
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int TYPE_LENGTH (struct type*) ;
 scalar_t__ TYPE_VECTOR (struct type*) ;

__attribute__((used)) static int
rs6000_use_struct_convention (int gcc_p, struct type *value_type)
{
  if ((TYPE_LENGTH (value_type) == 16 || TYPE_LENGTH (value_type) == 8)
      && TYPE_VECTOR (value_type))
    return 0;
  return 1;
}
