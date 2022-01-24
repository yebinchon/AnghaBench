#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int Z_is_one; int /*<<< orphan*/  Z; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
typedef  TYPE_1__ EC_POINT ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*,TYPE_1__*) ; 

int FUNC9(const EC_GROUP *group, EC_POINT *point,
                               BN_CTX *ctx)
{
    BN_CTX *new_ctx = NULL;
    BIGNUM *x, *y;
    int ret = 0;

    if (point->Z_is_one || FUNC8(group, point))
        return 1;

    if (ctx == NULL) {
        ctx = new_ctx = FUNC3();
        if (ctx == NULL)
            return 0;
    }

    FUNC4(ctx);
    x = FUNC2(ctx);
    y = FUNC2(ctx);
    if (y == NULL)
        goto err;

    if (!FUNC7(group, point, x, y, ctx))
        goto err;
    if (!FUNC5(point->X, x))
        goto err;
    if (!FUNC5(point->Y, y))
        goto err;
    if (!FUNC6(point->Z))
        goto err;
    point->Z_is_one = 1;

    ret = 1;

 err:
    FUNC0(ctx);
    FUNC1(new_ctx);
    return ret;
}