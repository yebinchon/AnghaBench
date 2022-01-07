
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int iv_len; } ;
struct TYPE_5__ {TYPE_2__* cipher; } ;
typedef TYPE_1__ EVP_CIPHER_CTX ;


 int EVP_CIPHER_CTX_ctrl (TYPE_1__*,int ,int ,int*) ;
 int EVP_CIPHER_flags (TYPE_2__*) ;
 int EVP_CIPH_CUSTOM_IV_LENGTH ;
 int EVP_CTRL_GET_IVLEN ;

int EVP_CIPHER_CTX_iv_length(const EVP_CIPHER_CTX *ctx)
{
    int i, rv;

    if ((EVP_CIPHER_flags(ctx->cipher) & EVP_CIPH_CUSTOM_IV_LENGTH) != 0) {
        rv = EVP_CIPHER_CTX_ctrl((EVP_CIPHER_CTX *)ctx, EVP_CTRL_GET_IVLEN,
                                 0, &i);
        return (rv == 1) ? i : -1;
    }
    return ctx->cipher->iv_len;
}
