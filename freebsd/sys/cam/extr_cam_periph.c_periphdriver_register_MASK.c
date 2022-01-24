#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct periph_driver {int flags; int /*<<< orphan*/  (* init ) () ;} ;

/* Variables and functions */
 int CAM_PERIPH_DRV_EARLY ; 
 int /*<<< orphan*/  M_CAMPERIPH ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct periph_driver**,struct periph_driver**,int) ; 
 int /*<<< orphan*/  FUNC1 (struct periph_driver**,int /*<<< orphan*/ ) ; 
 int initialized ; 
 struct periph_driver** FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int nperiph_drivers ; 
 struct periph_driver** periph_drivers ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6(void *data)
{
	struct periph_driver *drv = (struct periph_driver *)data;
	struct periph_driver **newdrivers, **old;
	int ndrivers;

again:
	ndrivers = nperiph_drivers + 2;
	newdrivers = FUNC2(sizeof(*newdrivers) * ndrivers, M_CAMPERIPH,
			    M_WAITOK);
	FUNC4();
	if (ndrivers != nperiph_drivers + 2) {
		/*
		 * Lost race against itself; go around.
		 */
		FUNC5();
		FUNC1(newdrivers, M_CAMPERIPH);
		goto again;
	}
	if (periph_drivers)
		FUNC0(periph_drivers, newdrivers,
		      sizeof(*newdrivers) * nperiph_drivers);
	newdrivers[nperiph_drivers] = drv;
	newdrivers[nperiph_drivers + 1] = NULL;
	old = periph_drivers;
	periph_drivers = newdrivers;
	nperiph_drivers++;
	FUNC5();
	if (old)
		FUNC1(old, M_CAMPERIPH);
	/* If driver marked as early or it is late now, initialize it. */
	if (((drv->flags & CAM_PERIPH_DRV_EARLY) != 0 && initialized > 0) ||
	    initialized > 1)
		(*drv->init)();
}