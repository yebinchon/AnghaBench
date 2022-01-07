
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ ucl_object_t ;
struct ucl_emitter_functions {int ud; int (* ucl_emitter_append_character ) (char,int,int ) ;int (* ucl_emitter_append_len ) (char*,int,int ) ;} ;
struct ucl_emitter_context {scalar_t__ id; TYPE_1__ const* top; struct ucl_emitter_functions* func; } ;


 scalar_t__ UCL_ARRAY ;
 scalar_t__ UCL_EMIT_CONFIG ;
 scalar_t__ UCL_OBJECT ;
 int stub1 (char*,int,int ) ;
 int stub2 (char*,int,int ) ;
 int stub3 (char,int,int ) ;

__attribute__((used)) static void
ucl_emitter_finish_object (struct ucl_emitter_context *ctx,
  const ucl_object_t *obj, bool compact, bool is_array)
{
 const struct ucl_emitter_functions *func = ctx->func;

 if (ctx->id == UCL_EMIT_CONFIG && obj != ctx->top) {
  if (obj->type != UCL_OBJECT && obj->type != UCL_ARRAY) {
   if (!is_array) {

    func->ucl_emitter_append_len (";\n", 2, func->ud);
   }
   else {

    func->ucl_emitter_append_len (",\n", 2, func->ud);
   }
  }
  else {
   func->ucl_emitter_append_character ('\n', 1, func->ud);
  }
 }
}
