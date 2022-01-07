
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * rsa; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ pkey; } ;
typedef int RSA ;
typedef TYPE_2__ EVP_PKEY ;


 int EVP_F_EVP_PKEY_GET0_RSA ;
 scalar_t__ EVP_PKEY_RSA ;
 int EVP_R_EXPECTING_AN_RSA_KEY ;
 int EVPerr (int ,int ) ;

RSA *EVP_PKEY_get0_RSA(EVP_PKEY *pkey)
{
    if (pkey->type != EVP_PKEY_RSA) {
        EVPerr(EVP_F_EVP_PKEY_GET0_RSA, EVP_R_EXPECTING_AN_RSA_KEY);
        return ((void*)0);
    }
    return pkey->pkey.rsa;
}
