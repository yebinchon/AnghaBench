
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ameth; } ;
struct TYPE_5__ {int (* param_missing ) (TYPE_2__ const*) ;} ;
typedef TYPE_2__ EVP_PKEY ;


 int stub1 (TYPE_2__ const*) ;

int EVP_PKEY_missing_parameters(const EVP_PKEY *pkey)
{
    if (pkey->ameth && pkey->ameth->param_missing)
        return pkey->ameth->param_missing(pkey);
    return 0;
}
