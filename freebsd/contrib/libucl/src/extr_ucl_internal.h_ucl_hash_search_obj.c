
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int keylen; int key; } ;
typedef TYPE_1__ ucl_object_t ;
typedef int ucl_hash_t ;


 scalar_t__ ucl_hash_search (int *,int ,int ) ;

__attribute__((used)) static inline const ucl_object_t *
ucl_hash_search_obj (ucl_hash_t* hashlin, ucl_object_t *obj)
{
 return (const ucl_object_t *)ucl_hash_search (hashlin, obj->key, obj->keylen);
}
