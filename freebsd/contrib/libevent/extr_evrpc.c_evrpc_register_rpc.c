
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_base {int http_server; int registered_rpcs; } ;
struct evrpc {void (* cb ) (struct evrpc_req_generic*,void*) ;void* cb_arg; struct evrpc_base* base; int uri; } ;


 int TAILQ_INSERT_TAIL (int *,struct evrpc*,int ) ;
 int evhttp_set_cb (int ,char*,int ,struct evrpc*) ;
 char* evrpc_construct_uri (int ) ;
 int evrpc_request_cb ;
 int mm_free (char*) ;
 int next ;

int
evrpc_register_rpc(struct evrpc_base *base, struct evrpc *rpc,
    void (*cb)(struct evrpc_req_generic *, void *), void *cb_arg)
{
 char *constructed_uri = evrpc_construct_uri(rpc->uri);

 rpc->base = base;
 rpc->cb = cb;
 rpc->cb_arg = cb_arg;

 TAILQ_INSERT_TAIL(&base->registered_rpcs, rpc, next);

 evhttp_set_cb(base->http_server,
     constructed_uri,
     evrpc_request_cb,
     rpc);

 mm_free(constructed_uri);

 return (0);
}
