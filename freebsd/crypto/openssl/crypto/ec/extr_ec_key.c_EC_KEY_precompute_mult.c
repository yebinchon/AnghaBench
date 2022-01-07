
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * group; } ;
typedef TYPE_1__ EC_KEY ;
typedef int BN_CTX ;


 int EC_GROUP_precompute_mult (int *,int *) ;

int EC_KEY_precompute_mult(EC_KEY *key, BN_CTX *ctx)
{
    if (key->group == ((void*)0))
        return 0;
    return EC_GROUP_precompute_mult(key->group, ctx);
}
