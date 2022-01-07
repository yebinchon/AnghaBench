
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int md; } ;
typedef TYPE_1__ BIO_OK_CTX ;
typedef int BIO ;


 TYPE_1__* BIO_get_data (int *) ;
 int BIO_set_data (int *,int *) ;
 int BIO_set_init (int *,int ) ;
 int EVP_MD_CTX_free (int ) ;
 int OPENSSL_clear_free (TYPE_1__*,int) ;

__attribute__((used)) static int ok_free(BIO *a)
{
    BIO_OK_CTX *ctx;

    if (a == ((void*)0))
        return 0;

    ctx = BIO_get_data(a);

    EVP_MD_CTX_free(ctx->md);
    OPENSSL_clear_free(ctx, sizeof(BIO_OK_CTX));
    BIO_set_data(a, ((void*)0));
    BIO_set_init(a, 0);

    return 1;
}
