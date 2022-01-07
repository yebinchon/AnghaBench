
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_INT ;
 scalar_t__ TYPE_NAME (struct type*) ;
 scalar_t__ strcmp (scalar_t__,char*) ;

int
is_scmvalue_type (struct type *type)
{
  if (TYPE_CODE (type) == TYPE_CODE_INT
      && TYPE_NAME (type) && strcmp (TYPE_NAME (type), "SCM") == 0)
    {
      return 1;
    }
  return 0;
}
