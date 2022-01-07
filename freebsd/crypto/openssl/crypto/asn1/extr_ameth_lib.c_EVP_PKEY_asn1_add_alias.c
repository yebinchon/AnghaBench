
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pkey_base_id; } ;
typedef TYPE_1__ EVP_PKEY_ASN1_METHOD ;


 int ASN1_PKEY_ALIAS ;
 int EVP_PKEY_asn1_add0 (TYPE_1__*) ;
 int EVP_PKEY_asn1_free (TYPE_1__*) ;
 TYPE_1__* EVP_PKEY_asn1_new (int,int ,int *,int *) ;

int EVP_PKEY_asn1_add_alias(int to, int from)
{
    EVP_PKEY_ASN1_METHOD *ameth;
    ameth = EVP_PKEY_asn1_new(from, ASN1_PKEY_ALIAS, ((void*)0), ((void*)0));
    if (ameth == ((void*)0))
        return 0;
    ameth->pkey_base_id = to;
    if (!EVP_PKEY_asn1_add0(ameth)) {
        EVP_PKEY_asn1_free(ameth);
        return 0;
    }
    return 1;
}
