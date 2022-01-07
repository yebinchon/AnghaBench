
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ptr; } ;
struct TYPE_5__ {TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;
typedef int ASN1_OCTET_STRING ;


 int ASN1_STRING_get0_data (int *) ;
 size_t ASN1_STRING_length (int *) ;
 int memcpy (unsigned char*,int ,size_t) ;

__attribute__((used)) static int hmac_get_priv_key(const EVP_PKEY *pkey, unsigned char *priv,
                             size_t *len)
{
    ASN1_OCTET_STRING *os = (ASN1_OCTET_STRING *)pkey->pkey.ptr;

    if (priv == ((void*)0)) {
        *len = ASN1_STRING_length(os);
        return 1;
    }

    if (os == ((void*)0) || *len < (size_t)ASN1_STRING_length(os))
        return 0;

    *len = ASN1_STRING_length(os);
    memcpy(priv, ASN1_STRING_get0_data(os), *len);

    return 1;
}
