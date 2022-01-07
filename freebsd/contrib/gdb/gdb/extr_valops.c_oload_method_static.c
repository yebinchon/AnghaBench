
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fn_field {int dummy; } ;


 scalar_t__ TYPE_FN_FIELD_STATIC_P (struct fn_field*,int) ;

__attribute__((used)) static int
oload_method_static (int method, struct fn_field *fns_ptr, int index)
{
  if (method && TYPE_FN_FIELD_STATIC_P (fns_ptr, index))
    return 1;
  else
    return 0;
}
