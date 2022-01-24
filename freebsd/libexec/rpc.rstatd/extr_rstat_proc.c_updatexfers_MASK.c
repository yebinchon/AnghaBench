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
typedef  int u_int64_t ;
struct statinfo {struct devinfo* dinfo; } ;
struct devinfo {int numdevs; struct devinfo* mem_ptr; TYPE_1__* devices; } ;
struct TYPE_2__ {int device_type; scalar_t__* operations; } ;

/* Variables and functions */
 int DEVSTAT_N_TRANS_FLAGS ; 
 int DEVSTAT_TYPE_DIRECT ; 
 int DEVSTAT_TYPE_MASK ; 
 int DEVSTAT_TYPE_PASS ; 
 int INT_MAX ; 
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

void
FUNC8(int numdevs, int *devs)
{
	register int i, j, k, t;
	struct statinfo stats;
	int num_devices = 0;
	u_int64_t total_transfers;

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

	for (i = 0, j = 0; i < stats.dinfo->numdevs && j < numdevs; i++) {
		if (((stats.dinfo->devices[i].device_type
		      & DEVSTAT_TYPE_MASK) == DEVSTAT_TYPE_DIRECT)
		 && ((stats.dinfo->devices[i].device_type
		      & DEVSTAT_TYPE_PASS) == 0)) {
			total_transfers = 0;
			for (k = 0; k < DEVSTAT_N_TRANS_FLAGS; k++)
				total_transfers +=
				    stats.dinfo->devices[i].operations[k];
			/*
			 * XXX KDM If the total transfers for this device
			 * are greater than the amount we can fit in a
			 * signed integer, just set them to the maximum
			 * amount we can fit in a signed integer.  I have a
			 * feeling that the rstat protocol assumes 32-bit
			 * integers, so this could well break on a 64-bit
			 * architecture like the Alpha.
			 */
			if (total_transfers > INT_MAX)
				t = INT_MAX;
			else
				t = total_transfers;
			devs[j] = t;
			j++;
		}
	}

	if (stats.dinfo->mem_ptr)
		FUNC5(stats.dinfo->mem_ptr);

	FUNC5(stats.dinfo);
}