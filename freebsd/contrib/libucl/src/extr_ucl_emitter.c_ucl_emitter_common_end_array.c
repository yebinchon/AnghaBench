
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
struct ucl_emitter_functions {int ud; int (* ucl_emitter_append_character ) (char,int,int ) ;} ;
struct ucl_emitter_context {scalar_t__ id; int indent; struct ucl_emitter_functions* func; } ;


 scalar_t__ UCL_EMIT_CONFIG ;
 int stub1 (char,int,int ) ;
 int stub2 (char,int,int ) ;
 int stub3 (char,int,int ) ;
 int ucl_add_tabs (struct ucl_emitter_functions const*,int ,int) ;
 int ucl_emitter_finish_object (struct ucl_emitter_context*,int const*,int,int) ;

__attribute__((used)) static void
ucl_emitter_common_end_array (struct ucl_emitter_context *ctx,
  const ucl_object_t *obj, bool compact)
{
 const struct ucl_emitter_functions *func = ctx->func;

 ctx->indent --;
 if (compact) {
  func->ucl_emitter_append_character (']', 1, func->ud);
 }
 else {
  if (ctx->id != UCL_EMIT_CONFIG) {

   func->ucl_emitter_append_character ('\n', 1, func->ud);
  }
  ucl_add_tabs (func, ctx->indent, compact);
  func->ucl_emitter_append_character (']', 1, func->ud);
 }

 ucl_emitter_finish_object (ctx, obj, compact, 1);
}
