
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_emitter_functions {int ud; int (* ucl_emitter_append_character ) (unsigned char const,int,int ) ;} ;
struct ucl_emitter_context {struct ucl_emitter_functions* func; } ;


 int stub1 (unsigned char const,int,int ) ;

void
ucl_emitter_print_null_msgpack (struct ucl_emitter_context *ctx)
{
 const struct ucl_emitter_functions *func = ctx->func;
 const unsigned char nil = 0xc0;

 func->ucl_emitter_append_character (nil, 1, func->ud);
}
