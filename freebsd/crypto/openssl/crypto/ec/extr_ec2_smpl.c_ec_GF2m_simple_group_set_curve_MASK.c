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
struct TYPE_3__ {int* poly; int /*<<< orphan*/  b; int /*<<< orphan*/  a; int /*<<< orphan*/  field; } ;
typedef  TYPE_1__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int BN_BITS2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  EC_F_EC_GF2M_SIMPLE_GROUP_SET_CURVE ; 
 int /*<<< orphan*/  EC_R_UNSUPPORTED_FIELD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int) ; 

int FUNC6(EC_GROUP *group,
                                   const BIGNUM *p, const BIGNUM *a,
                                   const BIGNUM *b, BN_CTX *ctx)
{
    int ret = 0, i;

    /* group->field */
    if (!FUNC2(group->field, p))
        goto err;
    i = FUNC1(group->field, group->poly, 6) - 1;
    if ((i != 5) && (i != 3)) {
        FUNC3(EC_F_EC_GF2M_SIMPLE_GROUP_SET_CURVE, EC_R_UNSUPPORTED_FIELD);
        goto err;
    }

    /* group->a */
    if (!FUNC0(group->a, a, group->poly))
        goto err;
    if (FUNC5(group->a, (int)(group->poly[0] + BN_BITS2 - 1) / BN_BITS2)
        == NULL)
        goto err;
    FUNC4(group->a);

    /* group->b */
    if (!FUNC0(group->b, b, group->poly))
        goto err;
    if (FUNC5(group->b, (int)(group->poly[0] + BN_BITS2 - 1) / BN_BITS2)
        == NULL)
        goto err;
    FUNC4(group->b);

    ret = 1;
 err:
    return ret;
}