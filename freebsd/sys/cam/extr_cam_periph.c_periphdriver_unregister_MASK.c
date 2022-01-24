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
struct periph_driver {int flags; int (* deinit ) () ;char* driver_name; } ;

/* Variables and functions */
 int CAM_PERIPH_DRV_EARLY ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int initialized ; 
 int nperiph_drivers ; 
 struct periph_driver** periph_drivers ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(void *data)
{
	struct periph_driver *drv = (struct periph_driver *)data;
	int error, n;

	/* If driver marked as early or it is late now, deinitialize it. */
	if (((drv->flags & CAM_PERIPH_DRV_EARLY) != 0 && initialized > 0) ||
	    initialized > 1) {
		if (drv->deinit == NULL) {
			FUNC1("CAM periph driver '%s' doesn't have deinit.\n",
			    drv->driver_name);
			return (EOPNOTSUPP);
		}
		error = drv->deinit();
		if (error != 0)
			return (error);
	}

	FUNC3();
	for (n = 0; n < nperiph_drivers && periph_drivers[n] != drv; n++)
		;
	FUNC0(n < nperiph_drivers,
	    ("Periph driver '%s' was not registered", drv->driver_name));
	for (; n + 1 < nperiph_drivers; n++)
		periph_drivers[n] = periph_drivers[n + 1];
	periph_drivers[n + 1] = NULL;
	nperiph_drivers--;
	FUNC4();
	return (0);
}