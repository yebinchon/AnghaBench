
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* meth; } ;
struct TYPE_5__ {int (* dsa_sign_setup ) (TYPE_2__*,int *,int **,int **) ;} ;
typedef TYPE_2__ DSA ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int stub1 (TYPE_2__*,int *,int **,int **) ;

int DSA_sign_setup(DSA *dsa, BN_CTX *ctx_in, BIGNUM **kinvp, BIGNUM **rp)
{
    return dsa->meth->dsa_sign_setup(dsa, ctx_in, kinvp, rp);
}
