
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_pool {int timeout; struct event_base* base; int output_hooks; int input_hooks; int paused_requests; int requests; int connections; } ;
struct event_base {int dummy; } ;


 int TAILQ_INIT (int *) ;
 struct evrpc_pool* mm_calloc (int,int) ;

struct evrpc_pool *
evrpc_pool_new(struct event_base *base)
{
 struct evrpc_pool *pool = mm_calloc(1, sizeof(struct evrpc_pool));
 if (pool == ((void*)0))
  return (((void*)0));

 TAILQ_INIT(&pool->connections);
 TAILQ_INIT(&pool->requests);

 TAILQ_INIT(&pool->paused_requests);

 TAILQ_INIT(&pool->input_hooks);
 TAILQ_INIT(&pool->output_hooks);

 pool->base = base;
 pool->timeout = -1;

 return (pool);
}
