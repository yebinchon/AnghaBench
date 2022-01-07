
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ov; } ;
struct TYPE_8__ {scalar_t__ type; char const* key; size_t keylen; TYPE_1__ value; } ;
typedef TYPE_2__ ucl_object_t ;


 scalar_t__ UCL_OBJECT ;
 TYPE_2__* ucl_hash_search_obj (int ,TYPE_2__*) ;

const ucl_object_t *
ucl_object_lookup_len (const ucl_object_t *obj, const char *key, size_t klen)
{
 const ucl_object_t *ret;
 ucl_object_t srch;

 if (obj == ((void*)0) || obj->type != UCL_OBJECT || key == ((void*)0)) {
  return ((void*)0);
 }

 srch.key = key;
 srch.keylen = klen;
 ret = ucl_hash_search_obj (obj->value.ov, &srch);

 return ret;
}
