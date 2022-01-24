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
struct cam_eb {int refcount; int /*<<< orphan*/  eb_mtx; int /*<<< orphan*/  sim; int /*<<< orphan*/  et_entries; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus_generation; int /*<<< orphan*/  xpt_busses; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_CAMXPT ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cam_eb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_eb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_1__ xsoftc ; 

__attribute__((used)) static void
FUNC8(struct cam_eb *bus)
{

	FUNC6();
	FUNC0(bus->refcount >= 1, ("bus->refcount >= 1"));
	if (--bus->refcount > 0) {
		FUNC7();
		return;
	}
	FUNC2(&xsoftc.xpt_busses, bus, links);
	xsoftc.bus_generation++;
	FUNC7();
	FUNC0(FUNC1(&bus->et_entries),
	    ("destroying bus, but target list is not empty"));
	FUNC3(bus->sim);
	FUNC5(&bus->eb_mtx);
	FUNC4(bus, M_CAMXPT);
}