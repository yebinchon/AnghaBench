
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int shift; scalar_t__ used; } ;
typedef TYPE_1__ hash_t ;
typedef int hash_key_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int allocate_hash_members (TYPE_1__*,int,int *) ;

__attribute__((used)) static void
init_hash(hash_t *hash,
          apr_size_t twoPower,
          apr_pool_t *result_pool)
{
  hash->used = 0;
  hash->shift = sizeof(hash_key_t) * 8 - twoPower;

  allocate_hash_members(hash, 1 << twoPower, result_pool);
}
