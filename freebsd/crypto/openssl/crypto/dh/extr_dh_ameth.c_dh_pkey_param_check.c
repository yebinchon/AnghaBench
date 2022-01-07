
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * dh; } ;
struct TYPE_5__ {TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;
typedef int DH ;


 int DH_check_ex (int *) ;

__attribute__((used)) static int dh_pkey_param_check(const EVP_PKEY *pkey)
{
    DH *dh = pkey->pkey.dh;

    return DH_check_ex(dh);
}
