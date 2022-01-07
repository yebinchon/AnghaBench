
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cipher_data_st {int flags; int blocksize; int keylen; int devcryptoid; } ;
struct TYPE_3__ {scalar_t__ ses; void* key; int keylen; int cipher; } ;
struct cipher_ctx {int mode; TYPE_1__ sess; int blocksize; int op; } ;
typedef int EVP_CIPHER_CTX ;


 int CIOCGSESSION ;
 int COP_DECRYPT ;
 int COP_ENCRYPT ;
 scalar_t__ EVP_CIPHER_CTX_get_cipher_data (int *) ;
 int EVP_CIPHER_CTX_nid (int *) ;
 int EVP_CIPH_MODE ;
 int SYS_F_IOCTL ;
 int SYSerr (int ,int ) ;
 int cfd ;
 scalar_t__ clean_devcrypto_session (TYPE_1__*) ;
 int errno ;
 struct cipher_data_st* get_cipher_data (int ) ;
 scalar_t__ ioctl (int ,int ,TYPE_1__*) ;

__attribute__((used)) static int cipher_init(EVP_CIPHER_CTX *ctx, const unsigned char *key,
                       const unsigned char *iv, int enc)
{
    struct cipher_ctx *cipher_ctx =
        (struct cipher_ctx *)EVP_CIPHER_CTX_get_cipher_data(ctx);
    const struct cipher_data_st *cipher_d =
        get_cipher_data(EVP_CIPHER_CTX_nid(ctx));


    if (cipher_ctx->sess.ses != 0 &&
        clean_devcrypto_session(&cipher_ctx->sess) == 0)
        return 0;

    cipher_ctx->sess.cipher = cipher_d->devcryptoid;
    cipher_ctx->sess.keylen = cipher_d->keylen;
    cipher_ctx->sess.key = (void *)key;
    cipher_ctx->op = enc ? COP_ENCRYPT : COP_DECRYPT;
    cipher_ctx->mode = cipher_d->flags & EVP_CIPH_MODE;
    cipher_ctx->blocksize = cipher_d->blocksize;
    if (ioctl(cfd, CIOCGSESSION, &cipher_ctx->sess) < 0) {
        SYSerr(SYS_F_IOCTL, errno);
        return 0;
    }

    return 1;
}
