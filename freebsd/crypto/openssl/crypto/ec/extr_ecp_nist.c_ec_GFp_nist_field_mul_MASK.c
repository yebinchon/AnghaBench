#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  field; int /*<<< orphan*/  (* field_mod_func ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_F_EC_GFP_NIST_FIELD_MUL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(const EC_GROUP *group, BIGNUM *r, const BIGNUM *a,
                          const BIGNUM *b, BN_CTX *ctx)
{
    int ret = 0;
    BN_CTX *ctx_new = NULL;

    if (!group || !r || !a || !b) {
        FUNC3(EC_F_EC_GFP_NIST_FIELD_MUL, ERR_R_PASSED_NULL_PARAMETER);
        goto err;
    }
    if (!ctx)
        if ((ctx_new = ctx = FUNC1()) == NULL)
            goto err;

    if (!FUNC2(r, a, b, ctx))
        goto err;
    if (!group->field_mod_func(r, r, group->field, ctx))
        goto err;

    ret = 1;
 err:
    FUNC0(ctx_new);
    return ret;
}