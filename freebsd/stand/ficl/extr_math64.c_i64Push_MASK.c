#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  hi; int /*<<< orphan*/  lo; } ;
typedef  int /*<<< orphan*/  FICL_STACK ;
typedef  TYPE_1__ DPINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void  FUNC1(FICL_STACK *pStack, DPINT i64)
{
    FUNC0(pStack, i64.lo);
    FUNC0(pStack, i64.hi);
    return;
}