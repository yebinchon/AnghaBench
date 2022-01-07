
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_req_generic {int * reply; int * request; struct evhttp_request* http_req; struct evrpc* rpc; } ;
struct evrpc {int (* request_unmarshal ) (int *,int ) ;int cb_arg; int (* cb ) (struct evrpc_req_generic*,int ) ;int reply_new_arg; int * (* reply_new ) (int ) ;int request_new_arg; int * (* request_new ) (int ) ;} ;
struct evhttp_request {int input_buffer; } ;
typedef enum EVRPC_HOOK_RESULT { ____Placeholder_EVRPC_HOOK_RESULT } EVRPC_HOOK_RESULT ;


 int EVRPC_TERMINATE ;
 int EVUTIL_ASSERT (struct evrpc_req_generic*) ;
 int HTTP_SERVUNAVAIL ;
 int evhttp_send_error (struct evhttp_request*,int ,int *) ;
 int evrpc_reqstate_free_ (struct evrpc_req_generic*) ;
 int * stub1 (int ) ;
 int stub2 (int *,int ) ;
 int * stub3 (int ) ;
 int stub4 (struct evrpc_req_generic*,int ) ;

__attribute__((used)) static void
evrpc_request_cb_closure(void *arg, enum EVRPC_HOOK_RESULT hook_res)
{
 struct evrpc_req_generic *rpc_state = arg;
 struct evrpc *rpc;
 struct evhttp_request *req;

 EVUTIL_ASSERT(rpc_state);
 rpc = rpc_state->rpc;
 req = rpc_state->http_req;

 if (hook_res == EVRPC_TERMINATE)
  goto error;


 rpc_state->request = rpc->request_new(rpc->request_new_arg);
 if (rpc_state->request == ((void*)0))
  goto error;

 if (rpc->request_unmarshal(
      rpc_state->request, req->input_buffer) == -1) {

  goto error;
 }



 rpc_state->reply = rpc->reply_new(rpc->reply_new_arg);
 if (rpc_state->reply == ((void*)0))
  goto error;


 rpc->cb(rpc_state, rpc->cb_arg);

 return;

error:
 evrpc_reqstate_free_(rpc_state);
 evhttp_send_error(req, HTTP_SERVUNAVAIL, ((void*)0));
 return;
}
