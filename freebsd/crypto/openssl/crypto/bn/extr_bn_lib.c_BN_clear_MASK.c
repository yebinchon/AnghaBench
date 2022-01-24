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
struct TYPE_4__ {int dmax; int /*<<< orphan*/  flags; scalar_t__ top; scalar_t__ neg; int /*<<< orphan*/ * d; } ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  BN_FLG_FIXED_TOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(BIGNUM *a)
{
    if (a == NULL)
        return;
    FUNC1(a);
    if (a->d != NULL)
        FUNC0(a->d, sizeof(*a->d) * a->dmax);
    a->neg = 0;
    a->top = 0;
    a->flags &= ~BN_FLG_FIXED_TOP;
}