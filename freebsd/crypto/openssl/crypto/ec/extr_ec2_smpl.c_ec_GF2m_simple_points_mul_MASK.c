#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  cofactor; int /*<<< orphan*/  order; } ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  TYPE_1__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EC_F_EC_GF2M_SIMPLE_POINTS_MUL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int FUNC5 (TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
int FUNC7(const EC_GROUP *group, EC_POINT *r,
                              const BIGNUM *scalar, size_t num,
                              const EC_POINT *points[],
                              const BIGNUM *scalars[],
                              BN_CTX *ctx)
{
    int ret = 0;
    EC_POINT *t = NULL;

    /*-
     * We limit use of the ladder only to the following cases:
     * - r := scalar * G
     *   Fixed point mul: scalar != NULL && num == 0;
     * - r := scalars[0] * points[0]
     *   Variable point mul: scalar == NULL && num == 1;
     * - r := scalar * G + scalars[0] * points[0]
     *   used, e.g., in ECDSA verification: scalar != NULL && num == 1
     *
     * In any other case (num > 1) we use the default wNAF implementation.
     *
     * We also let the default implementation handle degenerate cases like group
     * order or cofactor set to 0.
     */
    if (num > 1 || FUNC0(group->order) || FUNC0(group->cofactor))
        return FUNC6(group, r, scalar, num, points, scalars, ctx);

    if (scalar != NULL && num == 0)
        /* Fixed point multiplication */
        return FUNC5(group, r, scalar, NULL, ctx);

    if (scalar == NULL && num == 1)
        /* Variable point multiplication */
        return FUNC5(group, r, scalars[0], points[0], ctx);

    /*-
     * Double point multiplication:
     *  r := scalar * G + scalars[0] * points[0]
     */

    if ((t = FUNC3(group)) == NULL) {
        FUNC4(EC_F_EC_GF2M_SIMPLE_POINTS_MUL, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    if (!FUNC5(group, t, scalar, NULL, ctx)
        || !FUNC5(group, r, scalars[0], points[0], ctx)
        || !FUNC1(group, r, t, r, ctx))
        goto err;

    ret = 1;

 err:
    FUNC2(t);
    return ret;
}