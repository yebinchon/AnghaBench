
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int * offsets; void* last_matches; void* prefixes; int * pool; } ;
typedef TYPE_1__ hash_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int NO_OFFSET ;
 int * apr_palloc (int *,int) ;
 void* apr_pcalloc (int *,int) ;

__attribute__((used)) static void
allocate_hash_members(hash_t *hash,
                      apr_size_t size,
                      apr_pool_t *result_pool)
{
  apr_size_t i;

  hash->pool = result_pool;
  hash->size = size;

  hash->prefixes = apr_pcalloc(result_pool, size);
  hash->last_matches = apr_pcalloc(result_pool,
                                   sizeof(*hash->last_matches) * size);
  hash->offsets = apr_palloc(result_pool, sizeof(*hash->offsets) * size);

  for (i = 0; i < size; ++i)
    hash->offsets[i] = NO_OFFSET;
}
