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
struct TYPE_5__ {int top; int* d; int /*<<< orphan*/  flags; } ;
typedef  int BN_ULONG ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int BN_BITS2 ; 
 int /*<<< orphan*/  BN_FLG_FIXED_TOP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int) ; 

int FUNC2(BIGNUM *a, int n)
{
    int i, j, k;

    if (n < 0)
        return 0;

    i = n / BN_BITS2;
    j = n % BN_BITS2;
    if (a->top <= i) {
        if (FUNC1(a, i + 1) == NULL)
            return 0;
        for (k = a->top; k < i + 1; k++)
            a->d[k] = 0;
        a->top = i + 1;
        a->flags &= ~BN_FLG_FIXED_TOP;
    }

    a->d[i] |= (((BN_ULONG)1) << j);
    FUNC0(a);
    return 1;
}