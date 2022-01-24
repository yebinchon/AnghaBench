#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  nid; int /*<<< orphan*/  const* (* meth ) () ;TYPE_4__* data; } ;
typedef  TYPE_2__ ec_list_element ;
struct TYPE_20__ {int seed_len; int param_len; scalar_t__ field_type; scalar_t__ cofactor; } ;
struct TYPE_19__ {TYPE_1__* meth; } ;
struct TYPE_17__ {int /*<<< orphan*/  (* group_set_curve ) (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  const EC_METHOD ;
typedef  TYPE_3__ EC_GROUP ;
typedef  TYPE_4__ EC_CURVE_DATA ;
typedef  int /*<<< orphan*/  BN_ULONG ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (unsigned char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EC_F_EC_GROUP_NEW_FROM_DATA ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/  const*) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BN_LIB ; 
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 scalar_t__ NID_X9_62_prime_field ; 
 int /*<<< orphan*/  const* FUNC16 () ; 
 int /*<<< orphan*/  const* FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static EC_GROUP *FUNC19(const ec_list_element curve)
{
    EC_GROUP *group = NULL;
    EC_POINT *P = NULL;
    BN_CTX *ctx = NULL;
    BIGNUM *p = NULL, *a = NULL, *b = NULL, *x = NULL, *y = NULL, *order =
        NULL;
    int ok = 0;
    int seed_len, param_len;
    const EC_METHOD *meth;
    const EC_CURVE_DATA *data;
    const unsigned char *params;

    /* If no curve data curve method must handle everything */
    if (curve.data == NULL)
        return FUNC6(curve.meth != NULL ? curve.meth() : NULL);

    if ((ctx = FUNC1()) == NULL) {
        FUNC15(EC_F_EC_GROUP_NEW_FROM_DATA, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    data = curve.data;
    seed_len = data->seed_len;
    param_len = data->param_len;
    params = (const unsigned char *)(data + 1); /* skip header */
    params += seed_len;         /* skip seed */

    if ((p = FUNC2(params + 0 * param_len, param_len, NULL)) == NULL
        || (a = FUNC2(params + 1 * param_len, param_len, NULL)) == NULL
        || (b = FUNC2(params + 2 * param_len, param_len, NULL)) == NULL) {
        FUNC15(EC_F_EC_GROUP_NEW_FROM_DATA, ERR_R_BN_LIB);
        goto err;
    }

    if (curve.meth != 0) {
        meth = curve.meth();
        if (((group = FUNC6(meth)) == NULL) ||
            (!(group->meth->group_set_curve(group, p, a, b, ctx)))) {
            FUNC15(EC_F_EC_GROUP_NEW_FROM_DATA, ERR_R_EC_LIB);
            goto err;
        }
    } else if (data->field_type == NID_X9_62_prime_field) {
        if ((group = FUNC8(p, a, b, ctx)) == NULL) {
            FUNC15(EC_F_EC_GROUP_NEW_FROM_DATA, ERR_R_EC_LIB);
            goto err;
        }
    }
#ifndef OPENSSL_NO_EC2M
    else {                      /* field_type ==
                                 * NID_X9_62_characteristic_two_field */

        if ((group = FUNC7(p, a, b, ctx)) == NULL) {
            FUNC15(EC_F_EC_GROUP_NEW_FROM_DATA, ERR_R_EC_LIB);
            goto err;
        }
    }
#endif

    FUNC9(group, curve.nid);

    if ((P = FUNC13(group)) == NULL) {
        FUNC15(EC_F_EC_GROUP_NEW_FROM_DATA, ERR_R_EC_LIB);
        goto err;
    }

    if ((x = FUNC2(params + 3 * param_len, param_len, NULL)) == NULL
        || (y = FUNC2(params + 4 * param_len, param_len, NULL)) == NULL) {
        FUNC15(EC_F_EC_GROUP_NEW_FROM_DATA, ERR_R_BN_LIB);
        goto err;
    }
    if (!FUNC14(group, P, x, y, ctx)) {
        FUNC15(EC_F_EC_GROUP_NEW_FROM_DATA, ERR_R_EC_LIB);
        goto err;
    }
    if ((order = FUNC2(params + 5 * param_len, param_len, NULL)) == NULL
        || !FUNC4(x, (BN_ULONG)data->cofactor)) {
        FUNC15(EC_F_EC_GROUP_NEW_FROM_DATA, ERR_R_BN_LIB);
        goto err;
    }
    if (!FUNC10(group, P, order, x)) {
        FUNC15(EC_F_EC_GROUP_NEW_FROM_DATA, ERR_R_EC_LIB);
        goto err;
    }
    if (seed_len) {
        if (!FUNC11(group, params - seed_len, seed_len)) {
            FUNC15(EC_F_EC_GROUP_NEW_FROM_DATA, ERR_R_EC_LIB);
            goto err;
        }
    }
    ok = 1;
 err:
    if (!ok) {
        FUNC5(group);
        group = NULL;
    }
    FUNC12(P);
    FUNC0(ctx);
    FUNC3(p);
    FUNC3(a);
    FUNC3(b);
    FUNC3(order);
    FUNC3(x);
    FUNC3(y);
    return group;
}