
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ptr; } ;
struct TYPE_5__ {TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;
typedef int ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_free (int *) ;
 int * ASN1_OCTET_STRING_new () ;
 int ASN1_OCTET_STRING_set (int *,unsigned char const*,size_t) ;
 size_t POLY1305_KEY_SIZE ;

__attribute__((used)) static int poly1305_set_priv_key(EVP_PKEY *pkey, const unsigned char *priv,
                                 size_t len)
{
    ASN1_OCTET_STRING *os;

    if (pkey->pkey.ptr != ((void*)0) || len != POLY1305_KEY_SIZE)
        return 0;

    os = ASN1_OCTET_STRING_new();
    if (os == ((void*)0))
        return 0;

    if (!ASN1_OCTET_STRING_set(os, priv, len)) {
        ASN1_OCTET_STRING_free(os);
        return 0;
    }

    pkey->pkey.ptr = os;
    return 1;
}
