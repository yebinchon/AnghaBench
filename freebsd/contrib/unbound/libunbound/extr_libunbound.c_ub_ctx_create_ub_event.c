
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_event_base {int dummy; } ;
struct ub_ctx {int dothread; struct ub_event_base* event_base; scalar_t__ created_bg; } ;


 struct ub_ctx* ub_ctx_create_nopipe () ;

struct ub_ctx*
ub_ctx_create_ub_event(struct ub_event_base* ueb)
{
 struct ub_ctx* ctx = ub_ctx_create_nopipe();
 if(!ctx)
  return ((void*)0);

 ctx->created_bg = 0;
 ctx->dothread = 1;

 ctx->event_base = ueb;
 return ctx;
}
