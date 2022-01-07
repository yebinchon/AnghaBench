
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_ASN1_METHOD ;
typedef int ENGINE ;


 int ENGINE_finish (int *) ;
 int * EVP_PKEY_asn1_find_str (int **,char const*,int) ;
 scalar_t__ EVP_PKEY_asn1_get0_info (int*,int *,int *,int *,int *,int const*) ;

__attribute__((used)) static int get_optional_pkey_id(const char *pkey_name)
{
    const EVP_PKEY_ASN1_METHOD *ameth;
    ENGINE *tmpeng = ((void*)0);
    int pkey_id = 0;
    ameth = EVP_PKEY_asn1_find_str(&tmpeng, pkey_name, -1);
    if (ameth) {
        if (EVP_PKEY_asn1_get0_info(&pkey_id, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                    ameth) <= 0)
            pkey_id = 0;
    }
    ENGINE_finish(tmpeng);
    return pkey_id;
}
