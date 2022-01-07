
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int subkey; int bits; } ;
typedef TYPE_1__ camellia_ctx ;


 int Camellia_EncryptBlock (int ,int const*,int ,int *) ;

void
camellia_encrypt(const camellia_ctx *ctx, const u_char *src, u_char *dst)
{

    Camellia_EncryptBlock(ctx->bits, src, ctx->subkey, dst);
}
