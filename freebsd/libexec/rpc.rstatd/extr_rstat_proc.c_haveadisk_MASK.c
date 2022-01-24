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
struct statinfo {struct devinfo* dinfo; } ;
struct devinfo {int numdevs; struct devinfo* mem_ptr; TYPE_1__* devices; } ;
struct TYPE_2__ {int device_type; } ;

/* Variables and functions */
 int DEVSTAT_TYPE_DIRECT ; 
 int DEVSTAT_TYPE_MASK ; 
 int DEVSTAT_TYPE_PASS ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct devinfo*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  devstat_errbuf ; 
 int FUNC2 (int /*<<< orphan*/ *,struct statinfo*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct devinfo*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC8(void)
{
	register int i;
	struct statinfo stats;
	int num_devices, retval = 0;

	if ((num_devices = FUNC3(NULL)) < 0) {
		FUNC7(LOG_ERR, "rstatd: can't get number of devices: %s",
		       devstat_errbuf);
		FUNC4(1);
	}

	if (FUNC1(NULL) < 0) {
		FUNC7(LOG_ERR, "rstatd: %s", devstat_errbuf);
		FUNC4(1);
	}

	stats.dinfo = (struct devinfo *)FUNC6(sizeof(struct devinfo));
	FUNC0(stats.dinfo, sizeof(struct devinfo));

	if (FUNC2(NULL, &stats) == -1) {
		FUNC7(LOG_ERR, "rstatd: can't get device list: %s",
		       devstat_errbuf);
		FUNC4(1);
	}
	for (i = 0; i < stats.dinfo->numdevs; i++) {
		if (((stats.dinfo->devices[i].device_type
		      & DEVSTAT_TYPE_MASK) == DEVSTAT_TYPE_DIRECT)
		 && ((stats.dinfo->devices[i].device_type
		      & DEVSTAT_TYPE_PASS) == 0)) {
			retval = 1;
			break;
		}
	}

	if (stats.dinfo->mem_ptr)
		FUNC5(stats.dinfo->mem_ptr);

	FUNC5(stats.dinfo);
	return(retval);
}