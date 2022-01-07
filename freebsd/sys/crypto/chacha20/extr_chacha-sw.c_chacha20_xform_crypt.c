
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct chacha_ctx {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int chacha_encrypt_bytes (struct chacha_ctx*,int *,int *,int) ;

__attribute__((used)) static void
chacha20_xform_crypt(caddr_t cctx, u_int8_t *bytes)
{
 struct chacha_ctx *ctx;

 ctx = (void *)cctx;
 chacha_encrypt_bytes(ctx, bytes, bytes, 1);
}
