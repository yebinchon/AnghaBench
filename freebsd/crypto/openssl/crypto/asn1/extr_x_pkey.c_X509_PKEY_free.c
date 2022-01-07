
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* key_data; scalar_t__ key_free; int dec_pkey; int enc_pkey; int enc_algor; } ;
typedef TYPE_1__ X509_PKEY ;


 int ASN1_OCTET_STRING_free (int ) ;
 int EVP_PKEY_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 int X509_ALGOR_free (int ) ;

void X509_PKEY_free(X509_PKEY *x)
{
    if (x == ((void*)0))
        return;

    X509_ALGOR_free(x->enc_algor);
    ASN1_OCTET_STRING_free(x->enc_pkey);
    EVP_PKEY_free(x->dec_pkey);
    if (x->key_free)
        OPENSSL_free(x->key_data);
    OPENSSL_free(x);
}
