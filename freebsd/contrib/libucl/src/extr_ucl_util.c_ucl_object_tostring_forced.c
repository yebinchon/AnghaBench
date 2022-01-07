
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ ucl_object_t ;


 int UCL_OBJECT_BINARY ;
 char const* ucl_copy_value_trash (TYPE_1__ const*) ;

const char *
ucl_object_tostring_forced (const ucl_object_t *obj)
{

 if (!(obj->flags & UCL_OBJECT_BINARY)) {
  return ucl_copy_value_trash (obj);
 }

 return ((void*)0);
}
