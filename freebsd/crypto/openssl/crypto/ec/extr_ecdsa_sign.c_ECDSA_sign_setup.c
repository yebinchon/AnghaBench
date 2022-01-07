
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* meth; } ;
struct TYPE_5__ {int (* sign_setup ) (TYPE_2__*,int *,int **,int **) ;} ;
typedef TYPE_2__ EC_KEY ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int EC_F_ECDSA_SIGN_SETUP ;
 int EC_R_OPERATION_NOT_SUPPORTED ;
 int ECerr (int ,int ) ;
 int stub1 (TYPE_2__*,int *,int **,int **) ;

int ECDSA_sign_setup(EC_KEY *eckey, BN_CTX *ctx_in, BIGNUM **kinvp,
                     BIGNUM **rp)
{
    if (eckey->meth->sign_setup != ((void*)0))
        return eckey->meth->sign_setup(eckey, ctx_in, kinvp, rp);
    ECerr(EC_F_ECDSA_SIGN_SETUP, EC_R_OPERATION_NOT_SUPPORTED);
    return 0;
}
