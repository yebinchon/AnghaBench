
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ BN_CTX ;


 TYPE_1__* BN_CTX_new () ;
 int BN_FLG_SECURE ;

BN_CTX *BN_CTX_secure_new(void)
{
    BN_CTX *ret = BN_CTX_new();

    if (ret != ((void*)0))
        ret->flags = BN_FLG_SECURE;
    return ret;
}
