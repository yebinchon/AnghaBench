
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_req_generic {int * rpc_data; int * reply; int * request; int * hook_meta; struct evrpc* rpc; } ;
struct evrpc {int (* reply_free ) (int *) ;int (* request_free ) (int *) ;} ;


 int EVUTIL_ASSERT (int ) ;
 int evbuffer_free (int *) ;
 int evrpc_hook_context_free_ (int *) ;
 int mm_free (struct evrpc_req_generic*) ;
 int stub1 (int *) ;
 int stub2 (int *) ;

void
evrpc_reqstate_free_(struct evrpc_req_generic* rpc_state)
{
 struct evrpc *rpc;
 EVUTIL_ASSERT(rpc_state != ((void*)0));
 rpc = rpc_state->rpc;


 if (rpc_state->hook_meta != ((void*)0))
  evrpc_hook_context_free_(rpc_state->hook_meta);
 if (rpc_state->request != ((void*)0))
  rpc->request_free(rpc_state->request);
 if (rpc_state->reply != ((void*)0))
  rpc->reply_free(rpc_state->reply);
 if (rpc_state->rpc_data != ((void*)0))
  evbuffer_free(rpc_state->rpc_data);
 mm_free(rpc_state);
}
