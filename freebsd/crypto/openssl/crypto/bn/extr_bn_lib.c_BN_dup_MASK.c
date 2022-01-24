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
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  BN_FLG_SECURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC3 () ; 
 int /*<<< orphan*/  const* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 

BIGNUM *FUNC6(const BIGNUM *a)
{
    BIGNUM *t;

    if (a == NULL)
        return NULL;
    FUNC5(a);

    t = FUNC2(a, BN_FLG_SECURE) ? FUNC4() : FUNC3();
    if (t == NULL)
        return NULL;
    if (!FUNC0(t, a)) {
        FUNC1(t);
        return NULL;
    }
    FUNC5(t);
    return t;
}