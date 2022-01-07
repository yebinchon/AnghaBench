
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int EVP_PKEY ;
typedef int EC_KEY ;
typedef int EC_GROUP ;


 int EC_GROUP_get_curve_name (int const*) ;
 int * EC_KEY_get0_group (int *) ;
 int * EVP_PKEY_get0_EC_KEY (int *) ;
 int tls1_nid2group_id (int ) ;

__attribute__((used)) static uint16_t tls1_get_group_id(EVP_PKEY *pkey)
{
    EC_KEY *ec = EVP_PKEY_get0_EC_KEY(pkey);
    const EC_GROUP *grp;

    if (ec == ((void*)0))
        return 0;
    grp = EC_KEY_get0_group(ec);
    return tls1_nid2group_id(EC_GROUP_get_curve_name(grp));
}
