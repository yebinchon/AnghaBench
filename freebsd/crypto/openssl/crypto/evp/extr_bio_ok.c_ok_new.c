
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cont; int sigio; int * md; } ;
typedef TYPE_1__ BIO_OK_CTX ;
typedef int BIO ;


 int BIO_set_data (int *,TYPE_1__*) ;
 int BIO_set_init (int *,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_F_OK_NEW ;
 int * EVP_MD_CTX_new () ;
 int EVPerr (int ,int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;

__attribute__((used)) static int ok_new(BIO *bi)
{
    BIO_OK_CTX *ctx;

    if ((ctx = OPENSSL_zalloc(sizeof(*ctx))) == ((void*)0)) {
        EVPerr(EVP_F_OK_NEW, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    ctx->cont = 1;
    ctx->sigio = 1;
    ctx->md = EVP_MD_CTX_new();
    if (ctx->md == ((void*)0)) {
        OPENSSL_free(ctx);
        return 0;
    }
    BIO_set_init(bi, 0);
    BIO_set_data(bi, ctx);

    return 1;
}
