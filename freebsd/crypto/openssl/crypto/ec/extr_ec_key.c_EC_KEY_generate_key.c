
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* meth; int * group; } ;
struct TYPE_5__ {int (* keygen ) (TYPE_2__*) ;} ;
typedef TYPE_2__ EC_KEY ;


 int EC_F_EC_KEY_GENERATE_KEY ;
 int EC_R_OPERATION_NOT_SUPPORTED ;
 int ECerr (int ,int ) ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int stub1 (TYPE_2__*) ;

int EC_KEY_generate_key(EC_KEY *eckey)
{
    if (eckey == ((void*)0) || eckey->group == ((void*)0)) {
        ECerr(EC_F_EC_KEY_GENERATE_KEY, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    if (eckey->meth->keygen != ((void*)0))
        return eckey->meth->keygen(eckey);
    ECerr(EC_F_EC_KEY_GENERATE_KEY, EC_R_OPERATION_NOT_SUPPORTED);
    return 0;
}
