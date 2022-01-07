
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; } ;
typedef TYPE_2__ ucl_object_t ;
struct ucl_emitter_streamline_stack {int is_array; int empty; TYPE_2__ const* obj; } ;
struct ucl_emitter_context_streamline {struct ucl_emitter_streamline_stack* containers; TYPE_1__* ops; TYPE_2__ const* top; } ;
struct ucl_emitter_context {int dummy; } ;
struct TYPE_6__ {int (* ucl_emitter_start_object ) (struct ucl_emitter_context*,TYPE_2__ const*,int) ;int (* ucl_emitter_start_array ) (struct ucl_emitter_context*,TYPE_2__ const*,int) ;} ;


 int LL_PREPEND (struct ucl_emitter_streamline_stack*,struct ucl_emitter_streamline_stack*) ;
 struct ucl_emitter_context_streamline* TO_STREAMLINE (struct ucl_emitter_context*) ;
 scalar_t__ UCL_ARRAY ;
 struct ucl_emitter_streamline_stack* malloc (int) ;
 int stub1 (struct ucl_emitter_context*,TYPE_2__ const*,int) ;
 int stub2 (struct ucl_emitter_context*,TYPE_2__ const*,int) ;

void
ucl_object_emit_streamline_start_container (struct ucl_emitter_context *ctx,
  const ucl_object_t *obj)
{
 struct ucl_emitter_context_streamline *sctx = TO_STREAMLINE(ctx);
 struct ucl_emitter_streamline_stack *st, *top;
 bool print_key = 0;


 if (sctx->top == ((void*)0)) {
  sctx->top = obj;
 }

 top = sctx->containers;
 st = malloc (sizeof (*st));
 if (st != ((void*)0)) {
  if (top != ((void*)0) && !top->is_array) {
   print_key = 1;
  }
  st->empty = 1;
  st->obj = obj;
  if (obj != ((void*)0) && obj->type == UCL_ARRAY) {
   st->is_array = 1;
   sctx->ops->ucl_emitter_start_array (ctx, obj, print_key);
  }
  else {
   st->is_array = 0;
   sctx->ops->ucl_emitter_start_object (ctx, obj, print_key);
  }
  LL_PREPEND (sctx->containers, st);
 }
}
