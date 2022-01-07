
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_request_wrapper {struct evrpc_pool* pool; } ;
struct evrpc_pool {int dummy; } ;



void
evrpc_request_set_pool(struct evrpc_request_wrapper *ctx,
    struct evrpc_pool *pool)
{
 ctx->pool = pool;
}
