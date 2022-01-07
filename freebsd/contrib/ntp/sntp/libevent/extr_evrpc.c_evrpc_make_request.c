
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_request_wrapper {int ev_timeout; struct evrpc_pool* pool; } ;
struct evrpc_pool {int requests; int connections; int base; } ;


 int EVUTIL_ASSERT (int ) ;
 int * TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct evrpc_request_wrapper*,int ) ;
 int evrpc_pool_schedule (struct evrpc_pool*) ;
 int evrpc_request_timeout ;
 int evtimer_assign (int *,int ,int ,struct evrpc_request_wrapper*) ;
 int next ;

int
evrpc_make_request(struct evrpc_request_wrapper *ctx)
{
 struct evrpc_pool *pool = ctx->pool;


 evtimer_assign(&ctx->ev_timeout, pool->base, evrpc_request_timeout, ctx);


 EVUTIL_ASSERT(TAILQ_FIRST(&pool->connections) != ((void*)0));





 TAILQ_INSERT_TAIL(&pool->requests, ctx, next);

 evrpc_pool_schedule(pool);

 return (0);
}
