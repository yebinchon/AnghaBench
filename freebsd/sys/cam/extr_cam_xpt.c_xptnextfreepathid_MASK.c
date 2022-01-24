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
struct cam_eb {scalar_t__ path_id; } ;
typedef  scalar_t__ path_id_t ;
struct TYPE_2__ {int /*<<< orphan*/  xpt_busses; int /*<<< orphan*/  xpt_topo_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 struct cam_eb* FUNC0 (int /*<<< orphan*/ *) ; 
 struct cam_eb* FUNC1 (struct cam_eb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,scalar_t__,char*,char const**) ; 
 TYPE_1__ xsoftc ; 

__attribute__((used)) static path_id_t
FUNC4(void)
{
	struct cam_eb *bus;
	path_id_t pathid;
	const char *strval;

	FUNC2(&xsoftc.xpt_topo_lock, MA_OWNED);
	pathid = 0;
	bus = FUNC0(&xsoftc.xpt_busses);
retry:
	/* Find an unoccupied pathid */
	while (bus != NULL && bus->path_id <= pathid) {
		if (bus->path_id == pathid)
			pathid++;
		bus = FUNC1(bus, links);
	}

	/*
	 * Ensure that this pathid is not reserved for
	 * a bus that may be registered in the future.
	 */
	if (FUNC3("scbus", pathid, "at", &strval) == 0) {
		++pathid;
		/* Start the search over */
		goto retry;
	}
	return (pathid);
}