#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  felem_bytearray ;
struct TYPE_4__ {int /*<<< orphan*/  field_mod_func; } ;
typedef  TYPE_1__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  BN_nist_mod_256 ; 
 int /*<<< orphan*/  EC_F_EC_GFP_NISTP256_GROUP_SET_CURVE ; 
 int /*<<< orphan*/  EC_R_WRONG_CURVE_PARAMETERS ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * nistp256_curve_params ; 

int FUNC9(EC_GROUP *group, const BIGNUM *p,
                                    const BIGNUM *a, const BIGNUM *b,
                                    BN_CTX *ctx)
{
    int ret = 0;
    BN_CTX *new_ctx = NULL;
    BIGNUM *curve_p, *curve_a, *curve_b;

    if (ctx == NULL)
        if ((ctx = new_ctx = FUNC3()) == NULL)
            return 0;
    FUNC4(ctx);
    curve_p = FUNC2(ctx);
    curve_a = FUNC2(ctx);
    curve_b = FUNC2(ctx);
    if (curve_b == NULL)
        goto err;
    FUNC5(nistp256_curve_params[0], sizeof(felem_bytearray), curve_p);
    FUNC5(nistp256_curve_params[1], sizeof(felem_bytearray), curve_a);
    FUNC5(nistp256_curve_params[2], sizeof(felem_bytearray), curve_b);
    if ((FUNC6(curve_p, p)) || (FUNC6(curve_a, a)) || (FUNC6(curve_b, b))) {
        FUNC7(EC_F_EC_GFP_NISTP256_GROUP_SET_CURVE,
              EC_R_WRONG_CURVE_PARAMETERS);
        goto err;
    }
    group->field_mod_func = BN_nist_mod_256;
    ret = FUNC8(group, p, a, b, ctx);
 err:
    FUNC0(ctx);
    FUNC1(new_ctx);
    return ret;
}