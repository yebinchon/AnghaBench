
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; struct TYPE_7__* next; } ;
typedef TYPE_1__ ucl_object_t ;
typedef int * ucl_object_iter_t ;
struct ucl_emitter_functions {int ud; int (* ucl_emitter_append_len ) (char*,int,int ) ;int (* ucl_emitter_append_character ) (char,int,int ) ;} ;
struct ucl_emitter_context {int indent; struct ucl_emitter_functions* func; } ;


 scalar_t__ UCL_ARRAY ;
 int stub1 (char,int,int ) ;
 int stub2 (char*,int,int ) ;
 int ucl_emitter_common_elt (struct ucl_emitter_context*,TYPE_1__ const*,int,int,int) ;
 int ucl_emitter_print_key (int,struct ucl_emitter_context*,TYPE_1__ const*,int) ;
 TYPE_1__* ucl_object_iterate (TYPE_1__ const*,int **,int) ;

__attribute__((used)) static void
ucl_emitter_common_start_array (struct ucl_emitter_context *ctx,
  const ucl_object_t *obj, bool print_key, bool compact)
{
 const ucl_object_t *cur;
 ucl_object_iter_t iter = ((void*)0);
 const struct ucl_emitter_functions *func = ctx->func;
 bool first = 1;

 ucl_emitter_print_key (print_key, ctx, obj, compact);

 if (compact) {
  func->ucl_emitter_append_character ('[', 1, func->ud);
 }
 else {
  func->ucl_emitter_append_len ("[\n", 2, func->ud);
 }

 ctx->indent ++;

 if (obj->type == UCL_ARRAY) {

  while ((cur = ucl_object_iterate (obj, &iter, 1)) != ((void*)0)) {
   ucl_emitter_common_elt (ctx, cur, first, 0, compact);
   first = 0;
  }
 }
 else {

  cur = obj;
  while (cur) {
   ucl_emitter_common_elt (ctx, cur, first, 0, compact);
   first = 0;
   cur = cur->next;
  }
 }


}
