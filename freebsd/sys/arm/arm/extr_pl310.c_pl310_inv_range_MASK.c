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
typedef  int vm_size_t ;
typedef  int vm_paddr_t ;
struct TYPE_5__ {int /*<<< orphan*/  sc_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  PL310_INV_LINE_PA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int g_l2cache_align_mask ; 
 scalar_t__ g_l2cache_line_size ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* pl310_softc ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(vm_paddr_t start, vm_size_t size)
{

	if ((pl310_softc == NULL) || !pl310_softc->sc_enabled)
		return;

	FUNC0(pl310_softc);
	if (start & g_l2cache_align_mask) {
		size += start & g_l2cache_align_mask;
		start &= ~g_l2cache_align_mask;
	}
	if (size & g_l2cache_align_mask) {
		size &= ~g_l2cache_align_mask;
		size += g_l2cache_line_size;
	}
	while (size > 0) {
		FUNC3(pl310_softc, PL310_INV_LINE_PA, start);
		start += g_l2cache_line_size;
		size -= g_l2cache_line_size;
	}

	FUNC2();
	FUNC1(pl310_softc);
}