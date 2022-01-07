
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int keylen; int key; } ;
typedef TYPE_1__ ucl_object_t ;
typedef int ucl_hash_t ;


 int * ucl_hash_create (int) ;
 int ucl_hash_insert (int *,TYPE_1__ const*,int ,int ) ;

__attribute__((used)) static inline ucl_hash_t *
ucl_hash_insert_object (ucl_hash_t *hashlin,
  const ucl_object_t *obj,
  bool ignore_case)
{
 if (hashlin == ((void*)0)) {
  hashlin = ucl_hash_create (ignore_case);
 }
 ucl_hash_insert (hashlin, obj, obj->key, obj->keylen);

 return hashlin;
}
