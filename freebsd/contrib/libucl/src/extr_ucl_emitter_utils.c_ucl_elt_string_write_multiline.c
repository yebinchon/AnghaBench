
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_emitter_functions {int ud; int (* ucl_emitter_append_len ) (char*,int,int ) ;} ;
struct ucl_emitter_context {struct ucl_emitter_functions* func; } ;


 int stub1 (char*,int,int ) ;
 int stub2 (char const*,size_t,int ) ;
 int stub3 (char*,int,int ) ;

void
ucl_elt_string_write_multiline (const char *str, size_t size,
  struct ucl_emitter_context *ctx)
{
 const struct ucl_emitter_functions *func = ctx->func;

 func->ucl_emitter_append_len ("<<EOD\n", sizeof ("<<EOD\n") - 1, func->ud);
 func->ucl_emitter_append_len (str, size, func->ud);
 func->ucl_emitter_append_len ("\nEOD", sizeof ("\nEOD") - 1, func->ud);
}
