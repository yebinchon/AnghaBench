
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b; int a; int field; } ;
typedef TYPE_1__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_copy (int *,int ) ;

int ec_GF2m_simple_group_get_curve(const EC_GROUP *group, BIGNUM *p,
                                   BIGNUM *a, BIGNUM *b, BN_CTX *ctx)
{
    int ret = 0;

    if (p != ((void*)0)) {
        if (!BN_copy(p, group->field))
            return 0;
    }

    if (a != ((void*)0)) {
        if (!BN_copy(a, group->a))
            goto err;
    }

    if (b != ((void*)0)) {
        if (!BN_copy(b, group->b))
            goto err;
    }

    ret = 1;

 err:
    return ret;
}
