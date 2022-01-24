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

/* Variables and functions */
 int IBV_SYSFS_NAME_MAX ; 
 int IB_UCM_MAX_DEVICES ; 
 int FUNC0 (char**,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(char *dev_name)
{
	char *dev_path;
	char ibdev[IBV_SYSFS_NAME_MAX];
	int i, ret;

	for (i = 0; i < IB_UCM_MAX_DEVICES; i++) {
		ret = FUNC0(&dev_path, "/sys/class/infiniband_cm/ucm%d", i);
		if (ret < 0)
			return -1;

		ret = FUNC2(dev_path, "ibdev", ibdev, sizeof ibdev);
		if (ret < 0)
			continue;

		if (!FUNC3(dev_name, ibdev)) {
			FUNC1(dev_path);
			return i;
		}

		FUNC1(dev_path);
	}
	return -1;
}