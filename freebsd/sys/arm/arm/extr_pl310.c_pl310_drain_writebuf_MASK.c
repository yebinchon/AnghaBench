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
struct TYPE_4__ {int /*<<< orphan*/  sc_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* pl310_softc ; 

__attribute__((used)) static void
FUNC3(void)
{

	if ((pl310_softc == NULL) || !pl310_softc->sc_enabled)
		return;

	FUNC0(pl310_softc);
	FUNC2();
	FUNC1(pl310_softc);
}