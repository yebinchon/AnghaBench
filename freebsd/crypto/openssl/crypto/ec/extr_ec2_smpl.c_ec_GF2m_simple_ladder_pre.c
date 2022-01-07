
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {TYPE_1__* meth; int b; int field; } ;
struct TYPE_16__ {scalar_t__ Z_is_one; int Y; int X; int Z; } ;
struct TYPE_15__ {int (* field_mul ) (TYPE_3__ const*,int ,int ,int ,int *) ;int (* field_sqr ) (TYPE_3__ const*,int ,int ,int *) ;int (* field_encode ) (TYPE_3__ const*,int ,int ,int *) ;} ;
typedef TYPE_2__ EC_POINT ;
typedef TYPE_3__ EC_GROUP ;
typedef int BN_CTX ;


 int BN_GF2m_add (int ,int ,int ) ;
 int BN_RAND_BOTTOM_ANY ;
 int BN_RAND_TOP_ANY ;
 scalar_t__ BN_is_zero (int ) ;
 scalar_t__ BN_num_bits (int ) ;
 int BN_priv_rand (int ,scalar_t__,int ,int ) ;
 int EC_F_EC_GF2M_SIMPLE_LADDER_PRE ;
 int ECerr (int ,int ) ;
 int ERR_R_BN_LIB ;
 int stub1 (TYPE_3__ const*,int ,int ,int *) ;
 int stub2 (TYPE_3__ const*,int ,int ,int ,int *) ;
 int stub3 (TYPE_3__ const*,int ,int ,int *) ;
 int stub4 (TYPE_3__ const*,int ,int ,int *) ;
 int stub5 (TYPE_3__ const*,int ,int ,int *) ;
 int stub6 (TYPE_3__ const*,int ,int ,int ,int *) ;
 int stub7 (TYPE_3__ const*,int ,int ,int ,int *) ;

__attribute__((used)) static
int ec_GF2m_simple_ladder_pre(const EC_GROUP *group,
                              EC_POINT *r, EC_POINT *s,
                              EC_POINT *p, BN_CTX *ctx)
{

    if (p->Z_is_one == 0)
        return 0;


    do {
        if (!BN_priv_rand(s->Z, BN_num_bits(group->field) - 1,
                          BN_RAND_TOP_ANY, BN_RAND_BOTTOM_ANY)) {
            ECerr(EC_F_EC_GF2M_SIMPLE_LADDER_PRE, ERR_R_BN_LIB);
            return 0;
        }
    } while (BN_is_zero(s->Z));


    if ((group->meth->field_encode != ((void*)0)
         && !group->meth->field_encode(group, s->Z, s->Z, ctx))
        || !group->meth->field_mul(group, s->X, p->X, s->Z, ctx))
        return 0;


    do {
        if (!BN_priv_rand(r->Y, BN_num_bits(group->field) - 1,
                          BN_RAND_TOP_ANY, BN_RAND_BOTTOM_ANY)) {
            ECerr(EC_F_EC_GF2M_SIMPLE_LADDER_PRE, ERR_R_BN_LIB);
            return 0;
        }
    } while (BN_is_zero(r->Y));

    if ((group->meth->field_encode != ((void*)0)
         && !group->meth->field_encode(group, r->Y, r->Y, ctx))
        || !group->meth->field_sqr(group, r->Z, p->X, ctx)
        || !group->meth->field_sqr(group, r->X, r->Z, ctx)
        || !BN_GF2m_add(r->X, r->X, group->b)
        || !group->meth->field_mul(group, r->Z, r->Z, r->Y, ctx)
        || !group->meth->field_mul(group, r->X, r->X, r->Y, ctx))
        return 0;

    s->Z_is_one = 0;
    r->Z_is_one = 0;

    return 1;
}
