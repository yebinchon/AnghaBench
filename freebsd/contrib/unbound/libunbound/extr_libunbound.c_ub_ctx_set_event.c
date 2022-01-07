
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_event_base {int dummy; } ;
struct ub_ctx {int dothread; int cfglock; scalar_t__ created_bg; struct ub_event_base* event_base; int * event_worker; } ;
struct event_base {int dummy; } ;


 int UB_INITFAIL ;
 int UB_NOERROR ;
 int libworker_delete_event (int *) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 struct ub_event_base* ub_libevent_event_base (struct event_base*) ;
 struct event_base* ub_libevent_get_event_base (struct ub_event_base*) ;

int
ub_ctx_set_event(struct ub_ctx* ctx, struct event_base* base) {
 struct ub_event_base* new_base;

 if (!ctx || !ctx->event_base || !base) {
  return UB_INITFAIL;
 }
 if (ub_libevent_get_event_base(ctx->event_base) == base) {

  return UB_NOERROR;
 }

 lock_basic_lock(&ctx->cfglock);

 libworker_delete_event(ctx->event_worker);
 ctx->event_worker = ((void*)0);
 new_base = ub_libevent_event_base(base);
 if (new_base)
  ctx->event_base = new_base;
 ctx->created_bg = 0;
 ctx->dothread = 1;
 lock_basic_unlock(&ctx->cfglock);
 return new_base ? UB_NOERROR : UB_INITFAIL;
}
