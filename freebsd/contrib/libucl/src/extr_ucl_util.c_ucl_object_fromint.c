
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int iv; } ;
struct TYPE_6__ {TYPE_1__ value; int type; } ;
typedef TYPE_2__ ucl_object_t ;
typedef int int64_t ;


 int UCL_INT ;
 TYPE_2__* ucl_object_new () ;

ucl_object_t *
ucl_object_fromint (int64_t iv)
{
 ucl_object_t *obj;

 obj = ucl_object_new ();
 if (obj != ((void*)0)) {
  obj->type = UCL_INT;
  obj->value.iv = iv;
 }

 return obj;
}
