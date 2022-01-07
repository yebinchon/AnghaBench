
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ssl; } ;
typedef TYPE_1__ BIO_SSL ;
typedef int BIO ;


 int BIO_TYPE_SSL ;
 int * BIO_find_type (int *,int ) ;
 TYPE_1__* BIO_get_data (int *) ;
 int SSL_copy_session_id (int *,int *) ;

int BIO_ssl_copy_session_id(BIO *t, BIO *f)
{
    BIO_SSL *tdata, *fdata;
    t = BIO_find_type(t, BIO_TYPE_SSL);
    f = BIO_find_type(f, BIO_TYPE_SSL);
    if ((t == ((void*)0)) || (f == ((void*)0)))
        return 0;
    tdata = BIO_get_data(t);
    fdata = BIO_get_data(f);
    if ((tdata->ssl == ((void*)0)) || (fdata->ssl == ((void*)0)))
        return 0;
    if (!SSL_copy_session_id(tdata->ssl, (fdata->ssl)))
        return 0;
    return 1;
}
