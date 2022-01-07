
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double iv; double dv; } ;
struct TYPE_5__ {int type; TYPE_1__ value; } ;
typedef TYPE_2__ ucl_object_t ;






bool
ucl_object_todouble_safe (const ucl_object_t *obj, double *target)
{
 if (obj == ((void*)0) || target == ((void*)0)) {
  return 0;
 }
 switch (obj->type) {
 case 129:
  *target = obj->value.iv;
  break;
 case 130:
 case 128:
  *target = obj->value.dv;
  break;
 default:
  return 0;
 }

 return 1;
}
