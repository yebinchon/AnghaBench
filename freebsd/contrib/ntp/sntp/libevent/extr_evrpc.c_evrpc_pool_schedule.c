
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_request_wrapper {int dummy; } ;
struct evrpc_pool {int requests; } ;
struct evhttp_connection {int dummy; } ;


 struct evrpc_request_wrapper* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct evrpc_request_wrapper*,int ) ;
 struct evhttp_connection* evrpc_pool_find_connection (struct evrpc_pool*) ;
 int evrpc_schedule_request (struct evhttp_connection*,struct evrpc_request_wrapper*) ;
 int next ;

__attribute__((used)) static void
evrpc_pool_schedule(struct evrpc_pool *pool)
{
 struct evrpc_request_wrapper *ctx = TAILQ_FIRST(&pool->requests);
 struct evhttp_connection *evcon;


 if (ctx == ((void*)0))
  return;

 if ((evcon = evrpc_pool_find_connection(pool)) != ((void*)0)) {
  TAILQ_REMOVE(&pool->requests, ctx, next);
  evrpc_schedule_request(evcon, ctx);
 }
}
