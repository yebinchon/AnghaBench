
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ keylen; int key; } ;
typedef TYPE_1__ ucl_object_t ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static inline int
ucl_hash_equal (const ucl_object_t *k1, const ucl_object_t *k2)
{
 if (k1->keylen == k2->keylen) {
  return memcmp (k1->key, k2->key, k1->keylen) == 0;
 }

 return 0;
}
