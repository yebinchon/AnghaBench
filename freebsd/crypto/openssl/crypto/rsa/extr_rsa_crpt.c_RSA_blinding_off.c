
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int * blinding; } ;
typedef TYPE_1__ RSA ;


 int BN_BLINDING_free (int *) ;
 int RSA_FLAG_BLINDING ;
 int RSA_FLAG_NO_BLINDING ;

void RSA_blinding_off(RSA *rsa)
{
    BN_BLINDING_free(rsa->blinding);
    rsa->blinding = ((void*)0);
    rsa->flags &= ~RSA_FLAG_BLINDING;
    rsa->flags |= RSA_FLAG_NO_BLINDING;
}
