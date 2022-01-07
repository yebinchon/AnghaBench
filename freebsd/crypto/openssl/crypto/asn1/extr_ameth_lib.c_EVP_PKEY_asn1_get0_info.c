
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pkey_id; int pkey_base_id; int pkey_flags; char* info; char* pem_str; } ;
typedef TYPE_1__ EVP_PKEY_ASN1_METHOD ;



int EVP_PKEY_asn1_get0_info(int *ppkey_id, int *ppkey_base_id,
                            int *ppkey_flags, const char **pinfo,
                            const char **ppem_str,
                            const EVP_PKEY_ASN1_METHOD *ameth)
{
    if (!ameth)
        return 0;
    if (ppkey_id)
        *ppkey_id = ameth->pkey_id;
    if (ppkey_base_id)
        *ppkey_base_id = ameth->pkey_base_id;
    if (ppkey_flags)
        *ppkey_flags = ameth->pkey_flags;
    if (pinfo)
        *pinfo = ameth->info;
    if (ppem_str)
        *ppem_str = ameth->pem_str;
    return 1;
}
