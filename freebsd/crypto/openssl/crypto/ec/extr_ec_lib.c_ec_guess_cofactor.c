
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int order; int * cofactor; int field; TYPE_1__* meth; } ;
struct TYPE_4__ {scalar_t__ field_type; } ;
typedef TYPE_2__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_add (int *,int *,int *) ;
 int BN_copy (int *,int ) ;
 int BN_div (int *,int *,int *,int ,int *) ;
 int BN_num_bits (int ) ;
 int BN_rshift1 (int *,int ) ;
 int BN_set_bit (int *,int) ;
 int * BN_value_one () ;
 int BN_zero (int *) ;
 scalar_t__ NID_X9_62_characteristic_two_field ;

__attribute__((used)) static int ec_guess_cofactor(EC_GROUP *group) {
    int ret = 0;
    BN_CTX *ctx = ((void*)0);
    BIGNUM *q = ((void*)0);





    if (BN_num_bits(group->order) <= (BN_num_bits(group->field) + 1) / 2 + 3) {

        BN_zero(group->cofactor);

        return 1;
    }

    if ((ctx = BN_CTX_new()) == ((void*)0))
        return 0;

    BN_CTX_start(ctx);
    if ((q = BN_CTX_get(ctx)) == ((void*)0))
        goto err;


    if (group->meth->field_type == NID_X9_62_characteristic_two_field) {
        BN_zero(q);
        if (!BN_set_bit(q, BN_num_bits(group->field) - 1))
            goto err;
    } else {
        if (!BN_copy(q, group->field))
            goto err;
    }


    if (!BN_rshift1(group->cofactor, group->order)
        || !BN_add(group->cofactor, group->cofactor, q)

        || !BN_add(group->cofactor, group->cofactor, BN_value_one())

        || !BN_div(group->cofactor, ((void*)0), group->cofactor, group->order, ctx))
        goto err;
    ret = 1;
 err:
    BN_CTX_end(ctx);
    BN_CTX_free(ctx);
    return ret;
}
