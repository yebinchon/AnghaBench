
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cont; int ok; int * buf; int * read_start; int * read_end; int * cipher; } ;
typedef TYPE_1__ BIO_ENC_CTX ;
typedef int BIO ;


 int BIO_set_data (int *,TYPE_1__*) ;
 int BIO_set_init (int *,int) ;
 size_t BUF_OFFSET ;
 int ERR_R_MALLOC_FAILURE ;
 int * EVP_CIPHER_CTX_new () ;
 int EVP_F_ENC_NEW ;
 int EVPerr (int ,int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;

__attribute__((used)) static int enc_new(BIO *bi)
{
    BIO_ENC_CTX *ctx;

    if ((ctx = OPENSSL_zalloc(sizeof(*ctx))) == ((void*)0)) {
        EVPerr(EVP_F_ENC_NEW, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    ctx->cipher = EVP_CIPHER_CTX_new();
    if (ctx->cipher == ((void*)0)) {
        OPENSSL_free(ctx);
        return 0;
    }
    ctx->cont = 1;
    ctx->ok = 1;
    ctx->read_end = ctx->read_start = &(ctx->buf[BUF_OFFSET]);
    BIO_set_data(bi, ctx);
    BIO_set_init(bi, 1);

    return 1;
}
