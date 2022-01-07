
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ucl_object_t ;
struct ucl_emitter_context_streamline {TYPE_1__* ops; TYPE_2__* containers; } ;
struct ucl_emitter_context {int dummy; } ;
struct TYPE_4__ {int empty; scalar_t__ is_array; } ;
struct TYPE_3__ {int (* ucl_emitter_write_elt ) (struct ucl_emitter_context*,int const*,int,int) ;} ;


 struct ucl_emitter_context_streamline* TO_STREAMLINE (struct ucl_emitter_context*) ;
 int stub1 (struct ucl_emitter_context*,int const*,int,int) ;

void
ucl_object_emit_streamline_add_object (
  struct ucl_emitter_context *ctx, const ucl_object_t *obj)
{
 struct ucl_emitter_context_streamline *sctx = TO_STREAMLINE(ctx);
 bool is_array = 0, is_first = 0;

 if (sctx->containers != ((void*)0)) {
  if (sctx->containers->is_array) {
   is_array = 1;
  }
  if (sctx->containers->empty) {
   is_first = 1;
   sctx->containers->empty = 0;
  }
 }

 sctx->ops->ucl_emitter_write_elt (ctx, obj, is_first, !is_array);
}
