#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int a_is_minus3; int /*<<< orphan*/  const* field; int /*<<< orphan*/  const* b; TYPE_1__* meth; int /*<<< orphan*/  const* a; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* field_encode ) (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EC_F_EC_GFP_SIMPLE_GROUP_SET_CURVE ; 
 int /*<<< orphan*/  EC_R_INVALID_FIELD ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int FUNC15(EC_GROUP *group,
                                  const BIGNUM *p, const BIGNUM *a,
                                  const BIGNUM *b, BN_CTX *ctx)
{
    int ret = 0;
    BN_CTX *new_ctx = NULL;
    BIGNUM *tmp_a;

    /* p must be a prime > 3 */
    if (FUNC10(p) <= 2 || !FUNC8(p)) {
        FUNC12(EC_F_EC_GFP_SIMPLE_GROUP_SET_CURVE, EC_R_INVALID_FIELD);
        return 0;
    }

    if (ctx == NULL) {
        ctx = new_ctx = FUNC3();
        if (ctx == NULL)
            return 0;
    }

    FUNC4(ctx);
    tmp_a = FUNC2(ctx);
    if (tmp_a == NULL)
        goto err;

    /* group->field */
    if (!FUNC7(group->field, p))
        goto err;
    FUNC11(group->field, 0);

    /* group->a */
    if (!FUNC9(tmp_a, a, p, ctx))
        goto err;
    if (group->meth->field_encode) {
        if (!group->meth->field_encode(group, group->a, tmp_a, ctx))
            goto err;
    } else if (!FUNC7(group->a, tmp_a))
        goto err;

    /* group->b */
    if (!FUNC9(group->b, b, p, ctx))
        goto err;
    if (group->meth->field_encode)
        if (!group->meth->field_encode(group, group->b, group->b, ctx))
            goto err;

    /* group->a_is_minus3 */
    if (!FUNC5(tmp_a, 3))
        goto err;
    group->a_is_minus3 = (0 == FUNC6(tmp_a, group->field));

    ret = 1;

 err:
    FUNC0(ctx);
    FUNC1(new_ctx);
    return ret;
}