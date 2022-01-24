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
struct TYPE_4__ {int /*<<< orphan*/  field_mod_func; } ;
typedef  TYPE_1__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  BN_nist_mod_192 ; 
 int /*<<< orphan*/  BN_nist_mod_224 ; 
 int /*<<< orphan*/  BN_nist_mod_256 ; 
 int /*<<< orphan*/  BN_nist_mod_384 ; 
 int /*<<< orphan*/  BN_nist_mod_521 ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  EC_F_EC_GFP_NIST_GROUP_SET_CURVE ; 
 int /*<<< orphan*/  EC_R_NOT_A_NIST_PRIME ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int FUNC12(EC_GROUP *group, const BIGNUM *p,
                                const BIGNUM *a, const BIGNUM *b, BN_CTX *ctx)
{
    int ret = 0;
    BN_CTX *new_ctx = NULL;

    if (ctx == NULL)
        if ((ctx = new_ctx = FUNC2()) == NULL)
            return 0;

    FUNC3(ctx);

    if (FUNC9(FUNC4(), p) == 0)
        group->field_mod_func = BN_nist_mod_192;
    else if (FUNC9(FUNC5(), p) == 0)
        group->field_mod_func = BN_nist_mod_224;
    else if (FUNC9(FUNC6(), p) == 0)
        group->field_mod_func = BN_nist_mod_256;
    else if (FUNC9(FUNC7(), p) == 0)
        group->field_mod_func = BN_nist_mod_384;
    else if (FUNC9(FUNC8(), p) == 0)
        group->field_mod_func = BN_nist_mod_521;
    else {
        FUNC10(EC_F_EC_GFP_NIST_GROUP_SET_CURVE, EC_R_NOT_A_NIST_PRIME);
        goto err;
    }

    ret = FUNC11(group, p, a, b, ctx);

 err:
    FUNC0(ctx);
    FUNC1(new_ctx);
    return ret;
}