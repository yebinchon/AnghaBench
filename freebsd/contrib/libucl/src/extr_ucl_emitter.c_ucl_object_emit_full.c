
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ucl_object_t ;
struct ucl_emitter_functions {int dummy; } ;
struct ucl_emitter_context {TYPE_1__* ops; int const* comments; int const* top; scalar_t__ indent; struct ucl_emitter_functions* func; } ;
typedef int my_ctx ;
typedef enum ucl_emitter { ____Placeholder_ucl_emitter } ucl_emitter ;
struct TYPE_2__ {int (* ucl_emitter_write_elt ) (struct ucl_emitter_context*,int const*,int,int) ;} ;


 int memcpy (struct ucl_emitter_context*,struct ucl_emitter_context const*,int) ;
 int stub1 (struct ucl_emitter_context*,int const*,int,int) ;
 struct ucl_emitter_context* ucl_emit_get_standard_context (int) ;

bool
ucl_object_emit_full (const ucl_object_t *obj, enum ucl_emitter emit_type,
  struct ucl_emitter_functions *emitter,
  const ucl_object_t *comments)
{
 const struct ucl_emitter_context *ctx;
 struct ucl_emitter_context my_ctx;
 bool res = 0;

 ctx = ucl_emit_get_standard_context (emit_type);
 if (ctx != ((void*)0)) {
  memcpy (&my_ctx, ctx, sizeof (my_ctx));
  my_ctx.func = emitter;
  my_ctx.indent = 0;
  my_ctx.top = obj;
  my_ctx.comments = comments;

  my_ctx.ops->ucl_emitter_write_elt (&my_ctx, obj, 1, 0);
  res = 1;
 }

 return res;
}
