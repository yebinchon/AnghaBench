
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_request_wrapper {int dummy; } ;
struct evrpc_pool {int requests; int timeout; int * base; int connections; } ;
struct evhttp_connection {int timeout; int * http_server; } ;


 int EVUTIL_ASSERT (int ) ;
 struct evrpc_request_wrapper* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct evhttp_connection*,int ) ;
 int TAILQ_REMOVE (int *,struct evrpc_request_wrapper*,int ) ;
 int evhttp_connection_set_base (struct evhttp_connection*,int *) ;
 int evhttp_connection_set_timeout (struct evhttp_connection*,int ) ;
 int evrpc_schedule_request (struct evhttp_connection*,struct evrpc_request_wrapper*) ;
 int evutil_timerisset (int *) ;
 int next ;

void
evrpc_pool_add_connection(struct evrpc_pool *pool,
    struct evhttp_connection *connection)
{
 EVUTIL_ASSERT(connection->http_server == ((void*)0));
 TAILQ_INSERT_TAIL(&pool->connections, connection, next);




 if (pool->base != ((void*)0))
  evhttp_connection_set_base(connection, pool->base);





 if (!evutil_timerisset(&connection->timeout))
  evhttp_connection_set_timeout(connection, pool->timeout);






 if (TAILQ_FIRST(&pool->requests) != ((void*)0)) {
  struct evrpc_request_wrapper *request =
      TAILQ_FIRST(&pool->requests);
  TAILQ_REMOVE(&pool->requests, request, next);
  evrpc_schedule_request(connection, request);
 }
}
