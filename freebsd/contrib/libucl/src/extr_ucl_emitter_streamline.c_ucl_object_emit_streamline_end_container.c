
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucl_emitter_streamline_stack {struct ucl_emitter_streamline_stack* next; int obj; scalar_t__ is_array; } ;
struct ucl_emitter_context_streamline {struct ucl_emitter_streamline_stack* containers; TYPE_1__* ops; } ;
struct ucl_emitter_context {int dummy; } ;
struct TYPE_2__ {int (* ucl_emitter_end_object ) (struct ucl_emitter_context*,int ) ;int (* ucl_emitter_end_array ) (struct ucl_emitter_context*,int ) ;} ;


 struct ucl_emitter_context_streamline* TO_STREAMLINE (struct ucl_emitter_context*) ;
 int free (struct ucl_emitter_streamline_stack*) ;
 int stub1 (struct ucl_emitter_context*,int ) ;
 int stub2 (struct ucl_emitter_context*,int ) ;

void
ucl_object_emit_streamline_end_container (struct ucl_emitter_context *ctx)
{
 struct ucl_emitter_context_streamline *sctx = TO_STREAMLINE(ctx);
 struct ucl_emitter_streamline_stack *st;

 if (sctx->containers != ((void*)0)) {
  st = sctx->containers;

  if (st->is_array) {
   sctx->ops->ucl_emitter_end_array (ctx, st->obj);
  }
  else {
   sctx->ops->ucl_emitter_end_object (ctx, st->obj);
  }
  sctx->containers = st->next;
  free (st);
 }
}
