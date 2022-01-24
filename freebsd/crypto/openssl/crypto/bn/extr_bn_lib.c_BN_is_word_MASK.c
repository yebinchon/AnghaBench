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
struct TYPE_4__ {int /*<<< orphan*/  neg; } ;
typedef  int /*<<< orphan*/  BN_ULONG ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__ const*,int /*<<< orphan*/  const) ; 

int FUNC1(const BIGNUM *a, const BN_ULONG w)
{
    return FUNC0(a, w) && (!w || !a->neg);
}