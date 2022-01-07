
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int key_len; TYPE_1__* cipher; } ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_2__ EVP_CIPHER_CTX ;


 int EVP_CIPHER_CTX_ctrl (TYPE_2__*,int ,int ,unsigned char*) ;
 int EVP_CIPH_RAND_KEY ;
 int EVP_CTRL_RAND_KEY ;
 scalar_t__ RAND_priv_bytes (unsigned char*,int ) ;

int EVP_CIPHER_CTX_rand_key(EVP_CIPHER_CTX *ctx, unsigned char *key)
{
    if (ctx->cipher->flags & EVP_CIPH_RAND_KEY)
        return EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_RAND_KEY, 0, key);
    if (RAND_priv_bytes(key, ctx->key_len) <= 0)
        return 0;
    return 1;
}
