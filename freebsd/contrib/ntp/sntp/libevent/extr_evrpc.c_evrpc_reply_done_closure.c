
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_status {int error; struct evhttp_request* http_req; } ;
struct evrpc_request_wrapper {int (* reply_unmarshal ) (int ,int ) ;int cb_arg; int reply; int request; int (* cb ) (struct evrpc_status*,int ,int ,int ) ;int (* reply_clear ) (int ) ;struct evrpc_pool* pool; struct evhttp_request* req; } ;
struct evrpc_pool {int dummy; } ;
struct evhttp_request {int input_buffer; } ;
typedef int status ;
typedef enum EVRPC_HOOK_RESULT { ____Placeholder_EVRPC_HOOK_RESULT } EVRPC_HOOK_RESULT ;


 int EVRPC_STATUS_ERR_BADPAYLOAD ;
 int EVRPC_STATUS_ERR_HOOKABORTED ;
 int EVRPC_STATUS_ERR_TIMEOUT ;
 int EVRPC_TERMINATE ;
 int evhttp_request_free (struct evhttp_request*) ;
 scalar_t__ evhttp_request_is_owned (struct evhttp_request*) ;
 int evrpc_pool_schedule (struct evrpc_pool*) ;
 int evrpc_request_wrapper_free (struct evrpc_request_wrapper*) ;
 int memset (struct evrpc_status*,int ,int) ;
 int stub1 (int ,int ) ;
 int stub2 (int ) ;
 int stub3 (struct evrpc_status*,int ,int ,int ) ;

__attribute__((used)) static void
evrpc_reply_done_closure(void *arg, enum EVRPC_HOOK_RESULT hook_res)
{
 struct evrpc_request_wrapper *ctx = arg;
 struct evhttp_request *req = ctx->req;
 struct evrpc_pool *pool = ctx->pool;
 struct evrpc_status status;
 int res = -1;

 memset(&status, 0, sizeof(status));
 status.http_req = req;


 if (req == ((void*)0)) {
  status.error = EVRPC_STATUS_ERR_TIMEOUT;
 } else if (hook_res == EVRPC_TERMINATE) {
  status.error = EVRPC_STATUS_ERR_HOOKABORTED;
 } else {
  res = ctx->reply_unmarshal(ctx->reply, req->input_buffer);
  if (res == -1)
   status.error = EVRPC_STATUS_ERR_BADPAYLOAD;
 }

 if (res == -1) {

  ctx->reply_clear(ctx->reply);
 }

 (*ctx->cb)(&status, ctx->request, ctx->reply, ctx->cb_arg);

 evrpc_request_wrapper_free(ctx);



 if (req != ((void*)0) && evhttp_request_is_owned(req))
  evhttp_request_free(req);


 evrpc_pool_schedule(pool);
}
