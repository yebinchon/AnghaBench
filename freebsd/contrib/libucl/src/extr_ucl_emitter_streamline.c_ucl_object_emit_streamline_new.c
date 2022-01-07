
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
struct ucl_emitter_functions {int dummy; } ;
struct ucl_emitter_context_streamline {int const* top; struct ucl_emitter_functions* func; } ;
struct ucl_emitter_context {int dummy; } ;
typedef enum ucl_emitter { ____Placeholder_ucl_emitter } ucl_emitter ;


 struct ucl_emitter_context_streamline* calloc (int,int) ;
 int memcpy (struct ucl_emitter_context_streamline*,struct ucl_emitter_context const*,int) ;
 struct ucl_emitter_context* ucl_emit_get_standard_context (int) ;
 int ucl_object_emit_streamline_start_container (struct ucl_emitter_context*,int const*) ;

struct ucl_emitter_context*
ucl_object_emit_streamline_new (const ucl_object_t *obj,
  enum ucl_emitter emit_type,
  struct ucl_emitter_functions *emitter)
{
 const struct ucl_emitter_context *ctx;
 struct ucl_emitter_context_streamline *sctx;

 ctx = ucl_emit_get_standard_context (emit_type);
 if (ctx == ((void*)0)) {
  return ((void*)0);
 }

 sctx = calloc (1, sizeof (*sctx));
 if (sctx == ((void*)0)) {
  return ((void*)0);
 }

 memcpy (sctx, ctx, sizeof (*ctx));
 sctx->func = emitter;
 sctx->top = obj;

 ucl_object_emit_streamline_start_container ((struct ucl_emitter_context *)sctx,
   obj);

 return (struct ucl_emitter_context *)sctx;
}
