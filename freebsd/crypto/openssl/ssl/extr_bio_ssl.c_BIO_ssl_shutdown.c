
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ssl; } ;
typedef TYPE_1__ BIO_SSL ;
typedef int BIO ;


 scalar_t__ BIO_TYPE_SSL ;
 TYPE_1__* BIO_get_data (int *) ;
 scalar_t__ BIO_method_type (int *) ;
 int * BIO_next (int *) ;
 int SSL_shutdown (int *) ;

void BIO_ssl_shutdown(BIO *b)
{
    BIO_SSL *bdata;

    for (; b != ((void*)0); b = BIO_next(b)) {
        if (BIO_method_type(b) != BIO_TYPE_SSL)
            continue;
        bdata = BIO_get_data(b);
        if (bdata != ((void*)0) && bdata->ssl != ((void*)0))
            SSL_shutdown(bdata->ssl);
    }
}
