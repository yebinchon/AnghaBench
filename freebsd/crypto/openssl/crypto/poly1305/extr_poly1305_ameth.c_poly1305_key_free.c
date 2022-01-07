
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; int * data; } ;
typedef int EVP_PKEY ;
typedef TYPE_1__ ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_free (TYPE_1__*) ;
 TYPE_1__* EVP_PKEY_get0 (int *) ;
 int OPENSSL_cleanse (int *,int ) ;

__attribute__((used)) static void poly1305_key_free(EVP_PKEY *pkey)
{
    ASN1_OCTET_STRING *os = EVP_PKEY_get0(pkey);
    if (os != ((void*)0)) {
        if (os->data != ((void*)0))
            OPENSSL_cleanse(os->data, os->length);
        ASN1_OCTET_STRING_free(os);
    }
}
