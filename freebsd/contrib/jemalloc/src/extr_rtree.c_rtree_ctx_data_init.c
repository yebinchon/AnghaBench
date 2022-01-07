
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* l2_cache; TYPE_2__* cache; } ;
typedef TYPE_1__ rtree_ctx_t ;
struct TYPE_5__ {int * leaf; void* leafkey; } ;
typedef TYPE_2__ rtree_ctx_cache_elm_t ;


 unsigned int RTREE_CTX_NCACHE ;
 unsigned int RTREE_CTX_NCACHE_L2 ;
 void* RTREE_LEAFKEY_INVALID ;

void
rtree_ctx_data_init(rtree_ctx_t *ctx) {
 for (unsigned i = 0; i < RTREE_CTX_NCACHE; i++) {
  rtree_ctx_cache_elm_t *cache = &ctx->cache[i];
  cache->leafkey = RTREE_LEAFKEY_INVALID;
  cache->leaf = ((void*)0);
 }
 for (unsigned i = 0; i < RTREE_CTX_NCACHE_L2; i++) {
  rtree_ctx_cache_elm_t *cache = &ctx->l2_cache[i];
  cache->leafkey = RTREE_LEAFKEY_INVALID;
  cache->leaf = ((void*)0);
 }
}
