
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_pool {int dummy; } ;
struct evhttp_connection {int dummy; } ;
typedef int ev_uint16_t ;


 int assert (int ) ;
 struct evhttp_connection* evhttp_connection_new (char*,int ) ;
 int evrpc_pool_add_connection (struct evrpc_pool*,struct evhttp_connection*) ;
 struct evrpc_pool* evrpc_pool_new (int *) ;

__attribute__((used)) static struct evrpc_pool *
rpc_pool_with_connection(ev_uint16_t port)
{
 struct evhttp_connection *evcon;
 struct evrpc_pool *pool;

 pool = evrpc_pool_new(((void*)0));
 assert(pool != ((void*)0));

 evcon = evhttp_connection_new("127.0.0.1", port);
 assert(evcon != ((void*)0));

 evrpc_pool_add_connection(pool, evcon);

 return (pool);
}
