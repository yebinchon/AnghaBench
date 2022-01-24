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
typedef  int /*<<< orphan*/  ubus ;
struct u_businfo {scalar_t__ ub_version; int ub_generation; } ;

/* Variables and functions */
 scalar_t__ BUS_USER_VERSION ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  devinfo_dev ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ devinfo_generation ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int devinfo_initted ; 
 int /*<<< orphan*/  devinfo_res ; 
 int /*<<< orphan*/  devinfo_rman ; 
 int errno ; 
 scalar_t__ FUNC5 (char*,struct u_businfo*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,scalar_t__) ; 

int
FUNC8(void)
{
	struct u_businfo	ubus;
	size_t		ub_size;
	int			error, retries;

	if (!devinfo_initted) {
		FUNC0(&devinfo_dev);
		FUNC0(&devinfo_rman);
		FUNC0(&devinfo_res);
	}

	/*
	 * Get the generation count and interface version, verify that we 
	 * are compatible with the kernel.
	 */
	for (retries = 0; retries < 10; retries++) {
		FUNC1("get interface version");
		ub_size = sizeof(ubus);
		if (FUNC5("hw.bus.info", &ubus,
		    &ub_size, NULL, 0) != 0) {
			FUNC6("sysctlbyname(\"hw.bus.info\", ...) failed");
			return(EINVAL);
		}
		if ((ub_size != sizeof(ubus)) ||
		    (ubus.ub_version != BUS_USER_VERSION)) {
			FUNC7("kernel bus interface version mismatch: kernel %d expected %d",
			    ubus.ub_version, BUS_USER_VERSION);
			return(EINVAL);
		}
		FUNC1("generation count is %d", ubus.ub_generation);

		/*
		 * Don't rescan if the generation count hasn't changed.
		 */
		if (ubus.ub_generation == devinfo_generation)
			return(0);

		/*
		 * Generation count changed, rescan
		 */
		FUNC2();
		devinfo_initted = 0;
		devinfo_generation = 0;

		if ((error = FUNC3(ubus.ub_generation)) != 0) {
			FUNC2();
			if (error == EINVAL)
				continue;
			break;
		}
		if ((error = FUNC4(ubus.ub_generation)) != 0) {
			FUNC2();
			if (error == EINVAL)
				continue;
			break;
		}
		devinfo_initted = 1;
		devinfo_generation = ubus.ub_generation;
		return(0);
	}
	FUNC1("scan failed after %d retries", retries);
	errno = error;
	return(1);
}