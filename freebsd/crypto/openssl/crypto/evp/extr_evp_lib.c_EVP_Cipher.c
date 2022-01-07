
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* cipher; } ;
struct TYPE_5__ {int (* do_cipher ) (TYPE_2__*,unsigned char*,unsigned char const*,unsigned int) ;} ;
typedef TYPE_2__ EVP_CIPHER_CTX ;


 int stub1 (TYPE_2__*,unsigned char*,unsigned char const*,unsigned int) ;

int EVP_Cipher(EVP_CIPHER_CTX *ctx, unsigned char *out,
               const unsigned char *in, unsigned int inl)
{
    return ctx->cipher->do_cipher(ctx, out, in, inl);
}
