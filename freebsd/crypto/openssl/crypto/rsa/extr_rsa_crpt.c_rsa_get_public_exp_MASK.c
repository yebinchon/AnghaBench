#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static BIGNUM *FUNC7(const BIGNUM *d, const BIGNUM *p,
                                  const BIGNUM *q, BN_CTX *ctx)
{
    BIGNUM *ret = NULL, *r0, *r1, *r2;

    if (d == NULL || p == NULL || q == NULL)
        return NULL;

    FUNC2(ctx);
    r0 = FUNC1(ctx);
    r1 = FUNC1(ctx);
    r2 = FUNC1(ctx);
    if (r2 == NULL)
        goto err;

    if (!FUNC5(r1, p, FUNC6()))
        goto err;
    if (!FUNC5(r2, q, FUNC6()))
        goto err;
    if (!FUNC4(r0, r1, r2, ctx))
        goto err;

    ret = FUNC3(NULL, d, r0, ctx);
 err:
    FUNC0(ctx);
    return ret;
}