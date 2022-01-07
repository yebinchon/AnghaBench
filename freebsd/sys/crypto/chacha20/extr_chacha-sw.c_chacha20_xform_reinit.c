
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct chacha_ctx {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int chacha_ivsetup (struct chacha_ctx*,int const*,int const*) ;

__attribute__((used)) static void
chacha20_xform_reinit(caddr_t key, const u_int8_t *iv)
{
 struct chacha_ctx *ctx;

 ctx = (void *)key;
 chacha_ivsetup(ctx, iv + 8, iv);
}
