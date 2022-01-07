
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct chacha_ctx {int dummy; } ;


 int M_CRYPTO_DATA ;
 int explicit_bzero (struct chacha_ctx*,int) ;
 int free (struct chacha_ctx*,int ) ;

__attribute__((used)) static void
chacha20_xform_zerokey(u_int8_t **sched)
{
 struct chacha_ctx *ctx;

 ctx = (void *)*sched;
 explicit_bzero(ctx, sizeof(*ctx));
 free(ctx, M_CRYPTO_DATA);
 *sched = ((void*)0);
}
