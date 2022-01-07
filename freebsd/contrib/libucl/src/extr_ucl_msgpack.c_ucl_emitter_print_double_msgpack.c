
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ucl_emitter_functions {int ud; int (* ucl_emitter_append_len ) (unsigned char*,int,int ) ;} ;
struct ucl_emitter_context {struct ucl_emitter_functions* func; } ;
typedef int buf ;


 int TO_BE64 (int ) ;
 int memcpy (unsigned char*,double*,int) ;
 int stub1 (unsigned char*,int,int ) ;

void
ucl_emitter_print_double_msgpack (struct ucl_emitter_context *ctx, double val)
{
 const struct ucl_emitter_functions *func = ctx->func;
 union {
  double d;
  uint64_t i;
 } u;
 const unsigned char dbl_ch = 0xcb;
 unsigned char buf[sizeof(double) + 1];


 u.d = val;
 u.i = TO_BE64 (u.i);

 buf[0] = dbl_ch;
 memcpy (&buf[1], &u.d, sizeof (double));
 func->ucl_emitter_append_len (buf, sizeof (buf), func->ud);
}
