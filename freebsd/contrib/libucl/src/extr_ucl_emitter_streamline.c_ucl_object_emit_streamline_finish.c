
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_emitter_context_streamline {int * containers; } ;
struct ucl_emitter_context {int dummy; } ;


 struct ucl_emitter_context_streamline* TO_STREAMLINE (struct ucl_emitter_context*) ;
 int free (struct ucl_emitter_context_streamline*) ;
 int ucl_object_emit_streamline_end_container (struct ucl_emitter_context*) ;

void
ucl_object_emit_streamline_finish (struct ucl_emitter_context *ctx)
{
 struct ucl_emitter_context_streamline *sctx = TO_STREAMLINE(ctx);

 while (sctx->containers != ((void*)0)) {
  ucl_object_emit_streamline_end_container (ctx);
 }

 free (sctx);
}
