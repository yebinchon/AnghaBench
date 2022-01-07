
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int dummy; } ;
struct kill {int dummy; } ;
struct evrpc_pool {int dummy; } ;
struct evrpc_base {int dummy; } ;
struct evhttp {int dummy; } ;
typedef int ev_uint16_t ;


 int EVRPC_MAKE_REQUEST (int ,struct evrpc_pool*,struct msg*,struct kill*,int ,int *) ;
 int EVRPC_REQUEST_DONE (int ) ;
 int EVTAG_ASSIGN (struct msg*,int ,char*) ;
 int GotErrorCb ;
 int NeverReply ;
 int event_dispatch () ;
 int evhttp_free (struct evhttp*) ;
 int evrpc_pool_free (struct evrpc_pool*) ;
 int evrpc_pool_set_timeout (struct evrpc_pool*,int) ;
 int from_name ;
 int kill_free (struct kill*) ;
 struct kill* kill_new () ;
 int msg_free (struct msg*) ;
 struct msg* msg_new () ;
 struct evrpc_pool* rpc_pool_with_connection (int ) ;
 int rpc_setup (struct evhttp**,int *,struct evrpc_base**) ;
 int rpc_teardown (struct evrpc_base*) ;
 int saved_rpc ;
 int test_ok ;
 int to_name ;
 int tt_assert (int) ;

__attribute__((used)) static void
rpc_client_timeout(void)
{
 ev_uint16_t port;
 struct evhttp *http = ((void*)0);
 struct evrpc_base *base = ((void*)0);
 struct evrpc_pool *pool = ((void*)0);
 struct msg *msg = ((void*)0);
 struct kill *kill = ((void*)0);

 rpc_setup(&http, &port, &base);

 pool = rpc_pool_with_connection(port);
 tt_assert(pool);


 evrpc_pool_set_timeout(pool, 1);


 msg = msg_new();
 tt_assert(msg);
 EVTAG_ASSIGN(msg, from_name, "niels");
 EVTAG_ASSIGN(msg, to_name, "tester");

 kill = kill_new();

 EVRPC_MAKE_REQUEST(NeverReply, pool, msg, kill, GotErrorCb, ((void*)0));

 test_ok = 0;

 event_dispatch();


 EVRPC_REQUEST_DONE(saved_rpc);

 rpc_teardown(base);

 tt_assert(test_ok == 2);

end:
 if (msg)
  msg_free(msg);
 if (kill)
  kill_free(kill);

 if (pool)
  evrpc_pool_free(pool);
 if (http)
  evhttp_free(http);
}
