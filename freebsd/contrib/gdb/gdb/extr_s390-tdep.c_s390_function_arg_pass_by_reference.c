
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 unsigned int TYPE_LENGTH (struct type*) ;
 int is_power_of_two (unsigned int) ;
 scalar_t__ is_struct_like (struct type*) ;

__attribute__((used)) static int
s390_function_arg_pass_by_reference (struct type *type)
{
  unsigned length = TYPE_LENGTH (type);
  if (length > 8)
    return 1;


  return is_struct_like (type) && !is_power_of_two (length);
}
