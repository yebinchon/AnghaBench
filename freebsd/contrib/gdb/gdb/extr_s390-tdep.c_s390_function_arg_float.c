
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 unsigned int TYPE_LENGTH (struct type*) ;
 int is_float_like (struct type*) ;

__attribute__((used)) static int
s390_function_arg_float (struct type *type)
{
  unsigned length = TYPE_LENGTH (type);
  if (length > 8)
    return 0;

  return is_float_like (type);
}
