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
struct TYPE_4__ {int top; int /*<<< orphan*/  d; } ;
typedef  int /*<<< orphan*/  BN_ULONG ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int BN_BITS2 ; 
 int /*<<< orphan*/  BN_FLG_SECURE ; 
 int /*<<< orphan*/  BN_FLG_STATIC_DATA ; 
 int /*<<< orphan*/  BN_F_BN_EXPAND_INTERNAL ; 
 int /*<<< orphan*/  BN_R_BIGNUM_TOO_LONG ; 
 int /*<<< orphan*/  BN_R_EXPAND_ON_STATIC_BIGNUM_DATA ; 
 scalar_t__ FUNC0 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int INT_MAX ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static BN_ULONG *FUNC6(const BIGNUM *b, int words)
{
    BN_ULONG *a = NULL;

    if (words > (INT_MAX / (4 * BN_BITS2))) {
        FUNC1(BN_F_BN_EXPAND_INTERNAL, BN_R_BIGNUM_TOO_LONG);
        return NULL;
    }
    if (FUNC0(b, BN_FLG_STATIC_DATA)) {
        FUNC1(BN_F_BN_EXPAND_INTERNAL, BN_R_EXPAND_ON_STATIC_BIGNUM_DATA);
        return NULL;
    }
    if (FUNC0(b, BN_FLG_SECURE))
        a = FUNC2(words * sizeof(*a));
    else
        a = FUNC3(words * sizeof(*a));
    if (a == NULL) {
        FUNC1(BN_F_BN_EXPAND_INTERNAL, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    FUNC4(b->top <= words);
    if (b->top > 0)
        FUNC5(a, b->d, sizeof(*a) * b->top);

    return a;
}