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
struct TYPE_3__ {void* lo; void* hi; } ;
typedef  int /*<<< orphan*/  FICL_STACK ;
typedef  TYPE_1__ DPUNS ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 

DPUNS FUNC1(FICL_STACK *pStack)
{
    DPUNS ret;
    ret.hi = FUNC0(pStack);
    ret.lo = FUNC0(pStack);
    return ret;
}