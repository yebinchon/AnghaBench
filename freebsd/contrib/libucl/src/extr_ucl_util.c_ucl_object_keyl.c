
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t keylen; char const* key; } ;
typedef TYPE_1__ ucl_object_t ;



const char *
ucl_object_keyl (const ucl_object_t *obj, size_t *len)
{
 if (len == ((void*)0) || obj == ((void*)0)) {
  return ((void*)0);
 }
 *len = obj->keylen;
 return obj->key;
}
