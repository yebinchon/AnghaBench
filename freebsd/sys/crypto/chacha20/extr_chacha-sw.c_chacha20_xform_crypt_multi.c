
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct chacha_ctx {int dummy; } ;


 int chacha_encrypt_bytes (struct chacha_ctx*,int *,int *,size_t) ;

__attribute__((used)) static void
chacha20_xform_crypt_multi(void *vctx, uint8_t *bytes, size_t len)
{
 struct chacha_ctx *ctx;

 ctx = vctx;
 chacha_encrypt_bytes(ctx, bytes, bytes, len);
}
