
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_request_wrapper {int evcon; int hook_meta; struct evhttp_request* req; int ev_timeout; struct evrpc_pool* pool; } ;
struct evrpc_pool {int input_hooks; } ;
struct evhttp_request {int input_buffer; } ;





 int EVUTIL_ASSERT (int) ;
 int * TAILQ_FIRST (int *) ;
 int event_del (int *) ;
 int evhttp_request_own (struct evhttp_request*) ;
 int evrpc_hook_associate_meta_ (int *,int ) ;
 int evrpc_pause_request (struct evrpc_pool*,struct evrpc_request_wrapper*,int (*) (struct evrpc_request_wrapper*,int)) ;
 int evrpc_process_hooks (int *,struct evrpc_request_wrapper*,struct evhttp_request*,int ) ;
 int evrpc_reply_done_closure (struct evrpc_request_wrapper*,int) ;

__attribute__((used)) static void
evrpc_reply_done(struct evhttp_request *req, void *arg)
{
 struct evrpc_request_wrapper *ctx = arg;
 struct evrpc_pool *pool = ctx->pool;
 int hook_res = 130;


 event_del(&ctx->ev_timeout);

 ctx->req = req;


 if (req == ((void*)0)) {
  evrpc_reply_done_closure(ctx, 130);
  return;
 }

 if (TAILQ_FIRST(&pool->input_hooks) != ((void*)0)) {
  evrpc_hook_associate_meta_(&ctx->hook_meta, ctx->evcon);


  hook_res = evrpc_process_hooks(&pool->input_hooks,
      ctx, req, req->input_buffer);

  switch (hook_res) {
  case 128:
  case 130:
   break;
  case 129:






   if (req != ((void*)0))
    evhttp_request_own(req);

   evrpc_pause_request(pool, ctx,
       evrpc_reply_done_closure);
   return;
  default:
   EVUTIL_ASSERT(hook_res == 128 ||
       hook_res == 130 ||
       hook_res == 129);
  }
 }

 evrpc_reply_done_closure(ctx, hook_res);


}
