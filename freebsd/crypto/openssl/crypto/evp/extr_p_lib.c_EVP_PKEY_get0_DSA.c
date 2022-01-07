
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * dsa; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;
typedef int DSA ;


 int EVP_F_EVP_PKEY_GET0_DSA ;
 scalar_t__ EVP_PKEY_DSA ;
 int EVP_R_EXPECTING_A_DSA_KEY ;
 int EVPerr (int ,int ) ;

DSA *EVP_PKEY_get0_DSA(EVP_PKEY *pkey)
{
    if (pkey->type != EVP_PKEY_DSA) {
        EVPerr(EVP_F_EVP_PKEY_GET0_DSA, EVP_R_EXPECTING_A_DSA_KEY);
        return ((void*)0);
    }
    return pkey->pkey.dsa;
}
