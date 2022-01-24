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
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  SRP_NUMBER_ITERATIONS_FOR_PRIME ; 

__attribute__((used)) static int FUNC10(const BIGNUM *N, const BIGNUM *g)
{
    BN_CTX *bn_ctx = FUNC1();
    BIGNUM *p = FUNC8();
    BIGNUM *r = FUNC8();
    int ret =
        g != NULL && N != NULL && bn_ctx != NULL && FUNC5(N) &&
        FUNC6(N, SRP_NUMBER_ITERATIONS_FOR_PRIME, bn_ctx, NULL) == 1 &&
        p != NULL && FUNC9(p, N) &&
        /* p = (N-1)/2 */
        FUNC6(p, SRP_NUMBER_ITERATIONS_FOR_PRIME, bn_ctx, NULL) == 1 &&
        r != NULL &&
        /* verify g^((N-1)/2) == -1 (mod N) */
        FUNC7(r, g, p, N, bn_ctx) &&
        FUNC2(r, 1) && FUNC3(r, N) == 0;

    FUNC4(r);
    FUNC4(p);
    FUNC0(bn_ctx);
    return ret;
}