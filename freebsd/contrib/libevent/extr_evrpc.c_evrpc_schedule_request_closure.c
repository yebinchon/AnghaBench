
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; } ;
struct evrpc_status {int error; } ;
struct evrpc_request_wrapper {int cb_arg; int reply; int request; int (* cb ) (struct evrpc_status*,int ,int ,int ) ;int ev_timeout; int name; struct evrpc_pool* pool; struct evhttp_request* req; struct evhttp_connection* evcon; } ;
struct evrpc_pool {scalar_t__ timeout; } ;
struct evhttp_request {int dummy; } ;
struct evhttp_connection {int dummy; } ;
typedef int status ;
typedef enum EVRPC_HOOK_RESULT { ____Placeholder_EVRPC_HOOK_RESULT } EVRPC_HOOK_RESULT ;


 int EVHTTP_REQ_POST ;
 int EVRPC_STATUS_ERR_UNSTARTED ;
 int EVRPC_TERMINATE ;
 int evhttp_make_request (struct evhttp_connection*,struct evhttp_request*,int ,char*) ;
 char* evrpc_construct_uri (int ) ;
 int evrpc_request_wrapper_free (struct evrpc_request_wrapper*) ;
 int evtimer_add (int *,struct timeval*) ;
 int evutil_timerclear (struct timeval*) ;
 int memset (struct evrpc_status*,int ,int) ;
 int mm_free (char*) ;
 int stub1 (struct evrpc_status*,int ,int ,int ) ;

__attribute__((used)) static void
evrpc_schedule_request_closure(void *arg, enum EVRPC_HOOK_RESULT hook_res)
{
 struct evrpc_request_wrapper *ctx = arg;
 struct evhttp_connection *connection = ctx->evcon;
 struct evhttp_request *req = ctx->req;
 struct evrpc_pool *pool = ctx->pool;
 struct evrpc_status status;
 char *uri = ((void*)0);
 int res = 0;

 if (hook_res == EVRPC_TERMINATE)
  goto error;

 uri = evrpc_construct_uri(ctx->name);
 if (uri == ((void*)0))
  goto error;

 if (pool->timeout > 0) {



  struct timeval tv;
  evutil_timerclear(&tv);
  tv.tv_sec = pool->timeout;
  evtimer_add(&ctx->ev_timeout, &tv);
 }


 res = evhttp_make_request(connection, req, EVHTTP_REQ_POST, uri);
 mm_free(uri);

 if (res == -1)
  goto error;

 return;

error:
 memset(&status, 0, sizeof(status));
 status.error = EVRPC_STATUS_ERR_UNSTARTED;
 (*ctx->cb)(&status, ctx->request, ctx->reply, ctx->cb_arg);
 evrpc_request_wrapper_free(ctx);
}
