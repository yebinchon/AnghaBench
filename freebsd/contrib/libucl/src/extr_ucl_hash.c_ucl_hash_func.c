
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int keylen; int key; } ;
typedef TYPE_1__ ucl_object_t ;


 int mum_hash (int ,int ,int ) ;
 int ucl_hash_seed () ;

__attribute__((used)) static inline uint32_t
ucl_hash_func (const ucl_object_t *o)
{
 return mum_hash (o->key, o->keylen, ucl_hash_seed ());
}
