
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* sv; } ;
struct TYPE_5__ {int type; size_t len; TYPE_1__ value; } ;
typedef TYPE_2__ ucl_object_t ;




bool
ucl_object_tolstring_safe (const ucl_object_t *obj, const char **target, size_t *tlen)
{
 if (obj == ((void*)0) || target == ((void*)0)) {
  return 0;
 }
 switch (obj->type) {
 case 128:
  *target = obj->value.sv;
  if (tlen != ((void*)0)) {
   *tlen = obj->len;
  }
  break;
 default:
  return 0;
 }

 return 1;
}
