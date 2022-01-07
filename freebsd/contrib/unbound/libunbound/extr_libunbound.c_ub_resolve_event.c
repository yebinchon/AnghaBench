
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ub_event_callback_type ;
struct ub_ctx {TYPE_1__* event_worker; int event_base; int cfglock; int finalized; } ;
struct ctx_query {int dummy; } ;
struct TYPE_2__ {int base; } ;


 int UB_INITFAIL ;
 int UB_NOERROR ;
 int UB_NOMEM ;
 int context_finalize (struct ub_ctx*) ;
 struct ctx_query* context_new (struct ub_ctx*,char const*,int,int,int *,int ,void*) ;
 int libworker_attach_mesh (struct ub_ctx*,struct ctx_query*,int*) ;
 TYPE_1__* libworker_create_event (struct ub_ctx*,int ) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int ub_comm_base_now (int ) ;

int
ub_resolve_event(struct ub_ctx* ctx, const char* name, int rrtype,
 int rrclass, void* mydata, ub_event_callback_type callback,
 int* async_id)
{
 struct ctx_query* q;
 int r;

 if(async_id)
  *async_id = 0;
 lock_basic_lock(&ctx->cfglock);
 if(!ctx->finalized) {
  r = context_finalize(ctx);
  if(r) {
   lock_basic_unlock(&ctx->cfglock);
   return r;
  }
 }
 lock_basic_unlock(&ctx->cfglock);
 if(!ctx->event_worker) {
  ctx->event_worker = libworker_create_event(ctx,
   ctx->event_base);
  if(!ctx->event_worker) {
   return UB_INITFAIL;
  }
 }


 ub_comm_base_now(ctx->event_worker->base);


 q = context_new(ctx, name, rrtype, rrclass, ((void*)0), callback, mydata);
 if(!q)
  return UB_NOMEM;


 if((r=libworker_attach_mesh(ctx, q, async_id)) != 0)
  return r;
 return UB_NOERROR;
}
