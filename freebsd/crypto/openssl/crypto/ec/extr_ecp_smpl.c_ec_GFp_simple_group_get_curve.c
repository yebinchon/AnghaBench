
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int b; int a; TYPE_1__* meth; int field; } ;
struct TYPE_6__ {int (* field_decode ) (TYPE_2__ const*,int *,int ,int *) ;} ;
typedef TYPE_2__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_copy (int *,int ) ;
 int stub1 (TYPE_2__ const*,int *,int ,int *) ;
 int stub2 (TYPE_2__ const*,int *,int ,int *) ;

int ec_GFp_simple_group_get_curve(const EC_GROUP *group, BIGNUM *p, BIGNUM *a,
                                  BIGNUM *b, BN_CTX *ctx)
{
    int ret = 0;
    BN_CTX *new_ctx = ((void*)0);

    if (p != ((void*)0)) {
        if (!BN_copy(p, group->field))
            return 0;
    }

    if (a != ((void*)0) || b != ((void*)0)) {
        if (group->meth->field_decode) {
            if (ctx == ((void*)0)) {
                ctx = new_ctx = BN_CTX_new();
                if (ctx == ((void*)0))
                    return 0;
            }
            if (a != ((void*)0)) {
                if (!group->meth->field_decode(group, a, group->a, ctx))
                    goto err;
            }
            if (b != ((void*)0)) {
                if (!group->meth->field_decode(group, b, group->b, ctx))
                    goto err;
            }
        } else {
            if (a != ((void*)0)) {
                if (!BN_copy(a, group->a))
                    goto err;
            }
            if (b != ((void*)0)) {
                if (!BN_copy(b, group->b))
                    goto err;
            }
        }
    }

    ret = 1;

 err:
    BN_CTX_free(new_ctx);
    return ret;
}
