#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct TYPE_28__ {TYPE_1__* meth; } ;
struct TYPE_27__ {int Z_is_one; int /*<<< orphan*/ * Y; int /*<<< orphan*/ * X; int /*<<< orphan*/ * Z; } ;
struct TYPE_26__ {int /*<<< orphan*/  (* field_mul ) (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* field_inv ) (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* field_sqr ) (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ EC_POINT ;
typedef  TYPE_3__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EC_F_EC_GF2M_SIMPLE_LADDER_POST ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__ const*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_3__ const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
int FUNC23(const EC_GROUP *group,
                               EC_POINT *r, EC_POINT *s,
                               EC_POINT *p, BN_CTX *ctx)
{
    int ret = 0;
    BIGNUM *t0, *t1, *t2 = NULL;

    if (FUNC4(r->Z))
        return FUNC9(group, r);

    if (FUNC4(s->Z)) {
        if (!FUNC7(r, p)
            || !FUNC8(group, r, ctx)) {
            FUNC10(EC_F_EC_GF2M_SIMPLE_LADDER_POST, ERR_R_EC_LIB);
            return 0;
        }
        return 1;
    }

    FUNC2(ctx);
    t0 = FUNC1(ctx);
    t1 = FUNC1(ctx);
    t2 = FUNC1(ctx);
    if (t2 == NULL) {
        FUNC10(EC_F_EC_GF2M_SIMPLE_LADDER_POST, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (!group->meth->field_mul(group, t0, r->Z, s->Z, ctx)
        || !group->meth->field_mul(group, t1, p->X, r->Z, ctx)
        || !FUNC3(t1, r->X, t1)
        || !group->meth->field_mul(group, t2, p->X, s->Z, ctx)
        || !group->meth->field_mul(group, r->Z, r->X, t2, ctx)
        || !FUNC3(t2, t2, s->X)
        || !group->meth->field_mul(group, t1, t1, t2, ctx)
        || !group->meth->field_sqr(group, t2, p->X, ctx)
        || !FUNC3(t2, p->Y, t2)
        || !group->meth->field_mul(group, t2, t2, t0, ctx)
        || !FUNC3(t1, t2, t1)
        || !group->meth->field_mul(group, t2, p->X, t0, ctx)
        || !group->meth->field_inv(group, t2, t2, ctx)
        || !group->meth->field_mul(group, t1, t1, t2, ctx)
        || !group->meth->field_mul(group, r->X, r->Z, t2, ctx)
        || !FUNC3(t2, p->X, r->X)
        || !group->meth->field_mul(group, t2, t2, t1, ctx)
        || !FUNC3(r->Y, p->Y, t2)
        || !FUNC5(r->Z))
        goto err;

    r->Z_is_one = 1;

    /* GF(2^m) field elements should always have BIGNUM::neg = 0 */
    FUNC6(r->X, 0);
    FUNC6(r->Y, 0);

    ret = 1;

 err:
    FUNC0(ctx);
    return ret;
}