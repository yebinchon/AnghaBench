
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* enc_data; int x_pkey; int crl; int x509; } ;
typedef TYPE_1__ X509_INFO ;


 int OPENSSL_free (TYPE_1__*) ;
 int X509_CRL_free (int ) ;
 int X509_PKEY_free (int ) ;
 int X509_free (int ) ;

void X509_INFO_free(X509_INFO *x)
{
    if (x == ((void*)0))
        return;

    X509_free(x->x509);
    X509_CRL_free(x->crl);
    X509_PKEY_free(x->x_pkey);
    OPENSSL_free(x->enc_data);
    OPENSSL_free(x);
}
