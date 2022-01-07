
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_ctx {int dothread; int event_base; scalar_t__ created_bg; } ;
struct event_base {int dummy; } ;


 struct ub_ctx* ub_ctx_create_nopipe () ;
 int ub_ctx_delete (struct ub_ctx*) ;
 int ub_libevent_event_base (struct event_base*) ;

struct ub_ctx*
ub_ctx_create_event(struct event_base* eb)
{
 struct ub_ctx* ctx = ub_ctx_create_nopipe();
 if(!ctx)
  return ((void*)0);

 ctx->created_bg = 0;
 ctx->dothread = 1;

 ctx->event_base = ub_libevent_event_base(eb);
 if (!ctx->event_base) {
  ub_ctx_delete(ctx);
  return ((void*)0);
 }
 return ctx;
}
