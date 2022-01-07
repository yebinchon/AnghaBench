
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
typedef int EVP_PKEY ;
typedef int EC_KEY ;
typedef int EC_GROUP ;


 scalar_t__ EC_GROUP_get_curve_name (int const*) ;
 int EC_KEY_free (int *) ;
 int * EC_KEY_get0_group (int *) ;
 scalar_t__ EVP_PKEY_EC ;
 scalar_t__ EVP_PKEY_base_id (int *) ;
 int * EVP_PKEY_get1_EC_KEY (int *) ;
 scalar_t__ EVP_PKEY_type (int ) ;
 scalar_t__ NID_X9_62_prime256v1 ;
 scalar_t__ NID_secp384r1 ;
 TYPE_1__* key ;

__attribute__((used)) static int
ldns_pkey_is_ecdsa(EVP_PKEY* pkey)
{
        EC_KEY* ec;
        const EC_GROUP* g;




        if(EVP_PKEY_type(key->type) != EVP_PKEY_EC)
                return 0;

        ec = EVP_PKEY_get1_EC_KEY(pkey);
        g = EC_KEY_get0_group(ec);
        if(!g) {
                EC_KEY_free(ec);
                return 0;
        }
        if(EC_GROUP_get_curve_name(g) == NID_X9_62_prime256v1) {
                EC_KEY_free(ec);
                return 32;
 }
        if(EC_GROUP_get_curve_name(g) == NID_secp384r1) {
                EC_KEY_free(ec);
                return 48;
        }

        EC_KEY_free(ec);
        return 0;
}
