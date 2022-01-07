
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ucl_type_t ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ ucl_object_t ;


 int UCL_NULL ;

ucl_type_t
ucl_object_type (const ucl_object_t *obj)
{
 if (obj == ((void*)0)) {
  return UCL_NULL;
 }

 return obj->type;
}
