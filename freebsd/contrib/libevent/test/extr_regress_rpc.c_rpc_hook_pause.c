
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tv ;
struct timeval {int dummy; } ;
struct rpc_hook_ctx_ {void* ctx; void* vbase; } ;
struct evhttp_request {int dummy; } ;
struct evbuffer {int dummy; } ;


 int EVRPC_PAUSE ;
 int EV_TIMEOUT ;
 int assert (int ) ;
 int event_once (int,int ,int ,struct rpc_hook_ctx_*,struct timeval*) ;
 struct rpc_hook_ctx_* malloc (int) ;
 int memset (struct timeval*,int ,int) ;
 int rpc_hook_pause_cb ;

__attribute__((used)) static int
rpc_hook_pause(void *ctx, struct evhttp_request *req, struct evbuffer *evbuf,
    void *arg)
{
 struct rpc_hook_ctx_ *tmp = malloc(sizeof(*tmp));
 struct timeval tv;

 assert(tmp != ((void*)0));
 tmp->vbase = arg;
 tmp->ctx = ctx;

 memset(&tv, 0, sizeof(tv));
 event_once(-1, EV_TIMEOUT, rpc_hook_pause_cb, tmp, &tv);
 return EVRPC_PAUSE;
}
