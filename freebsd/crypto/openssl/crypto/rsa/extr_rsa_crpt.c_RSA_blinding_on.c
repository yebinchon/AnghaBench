
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int * blinding; } ;
typedef TYPE_1__ RSA ;
typedef int BN_CTX ;


 int RSA_FLAG_BLINDING ;
 int RSA_FLAG_NO_BLINDING ;
 int RSA_blinding_off (TYPE_1__*) ;
 int * RSA_setup_blinding (TYPE_1__*,int *) ;

int RSA_blinding_on(RSA *rsa, BN_CTX *ctx)
{
    int ret = 0;

    if (rsa->blinding != ((void*)0))
        RSA_blinding_off(rsa);

    rsa->blinding = RSA_setup_blinding(rsa, ctx);
    if (rsa->blinding == ((void*)0))
        goto err;

    rsa->flags |= RSA_FLAG_BLINDING;
    rsa->flags &= ~RSA_FLAG_NO_BLINDING;
    ret = 1;
 err:
    return ret;
}
