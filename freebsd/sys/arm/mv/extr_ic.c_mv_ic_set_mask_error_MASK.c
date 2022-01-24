#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  ic_bsh; int /*<<< orphan*/  ic_bst; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_MASK_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* mv_ic_sc ; 

void
FUNC1(uint32_t val)
{

	FUNC0(mv_ic_sc->ic_bst, mv_ic_sc->ic_bsh,
	    IRQ_MASK_ERROR, val);
}