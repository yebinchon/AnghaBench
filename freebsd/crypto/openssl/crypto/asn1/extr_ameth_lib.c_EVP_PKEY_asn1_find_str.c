
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pkey_flags; char const* pem_str; } ;
typedef TYPE_1__ EVP_PKEY_ASN1_METHOD ;
typedef int ENGINE ;


 int ASN1_PKEY_ALIAS ;
 int ENGINE_free (int *) ;
 int ENGINE_init (int *) ;
 TYPE_1__* ENGINE_pkey_asn1_find_str (int **,char const*,int) ;
 TYPE_1__* EVP_PKEY_asn1_get0 (int) ;
 int EVP_PKEY_asn1_get_count () ;
 int strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,int) ;

const EVP_PKEY_ASN1_METHOD *EVP_PKEY_asn1_find_str(ENGINE **pe,
                                                   const char *str, int len)
{
    int i;
    const EVP_PKEY_ASN1_METHOD *ameth = ((void*)0);

    if (len == -1)
        len = strlen(str);
    if (pe) {

        ENGINE *e;
        ameth = ENGINE_pkey_asn1_find_str(&e, str, len);
        if (ameth) {



            if (!ENGINE_init(e))
                ameth = ((void*)0);
            ENGINE_free(e);
            *pe = e;
            return ameth;
        }

        *pe = ((void*)0);
    }
    for (i = EVP_PKEY_asn1_get_count(); i-- > 0; ) {
        ameth = EVP_PKEY_asn1_get0(i);
        if (ameth->pkey_flags & ASN1_PKEY_ALIAS)
            continue;
        if ((int)strlen(ameth->pem_str) == len
            && strncasecmp(ameth->pem_str, str, len) == 0)
            return ameth;
    }
    return ((void*)0);
}
