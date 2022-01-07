
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int flags; } ;
typedef TYPE_1__ ucl_object_t ;


 int UCL_OBJECT_BINARY ;

 char* ucl_copy_value_trash (TYPE_1__ const*) ;

bool
ucl_object_tostring_safe (const ucl_object_t *obj, const char **target)
{
 if (obj == ((void*)0) || target == ((void*)0)) {
  return 0;
 }

 switch (obj->type) {
 case 128:
  if (!(obj->flags & UCL_OBJECT_BINARY)) {
   *target = ucl_copy_value_trash (obj);
  }
  break;
 default:
  return 0;
 }

 return 1;
}
