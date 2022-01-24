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
typedef  int /*<<< orphan*/  BN_MONT_CTX ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(BIGNUM *w, const BIGNUM *a, const BIGNUM *a1,
                   const BIGNUM *a1_odd, int k, BN_CTX *ctx,
                   BN_MONT_CTX *mont)
{
    if (!FUNC2(w, w, a1_odd, a, ctx, mont)) /* w := w^a1_odd mod a */
        return -1;
    if (FUNC1(w))
        return 0;               /* probably prime */
    if (FUNC0(w, a1) == 0)
        return 0;               /* w == -1 (mod a), 'a' is probably prime */
    while (--k) {
        if (!FUNC3(w, w, w, a, ctx)) /* w := w^2 mod a */
            return -1;
        if (FUNC1(w))
            return 1;           /* 'a' is composite, otherwise a previous 'w'
                                 * would have been == -1 (mod 'a') */
        if (FUNC0(w, a1) == 0)
            return 0;           /* w == -1 (mod a), 'a' is probably prime */
    }
    /*
     * If we get here, 'w' is the (a-1)/2-th power of the original 'w', and
     * it is neither -1 nor +1 -- so 'a' cannot be prime
     */
    FUNC4(w);
    return 1;
}