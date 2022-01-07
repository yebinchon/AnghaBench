
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
typedef TYPE_1__ EVP_PKEY ;


 int EVP_F_EVP_PKEY_SET_ALIAS_TYPE ;
 scalar_t__ EVP_PKEY_base_id (TYPE_1__*) ;
 scalar_t__ EVP_PKEY_type (int) ;
 int EVP_R_UNSUPPORTED_ALGORITHM ;
 int EVPerr (int ,int ) ;

int EVP_PKEY_set_alias_type(EVP_PKEY *pkey, int type)
{
    if (pkey->type == type) {
        return 1;
    }





    if (EVP_PKEY_type(type) != EVP_PKEY_base_id(pkey)) {
        EVPerr(EVP_F_EVP_PKEY_SET_ALIAS_TYPE, EVP_R_UNSUPPORTED_ALGORITHM);
        return 0;
    }

    pkey->type = type;
    return 1;
}
