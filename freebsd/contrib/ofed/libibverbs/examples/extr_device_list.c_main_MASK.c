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
struct ibv_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_device**) ; 
 int /*<<< orphan*/  FUNC2 (struct ibv_device*) ; 
 struct ibv_device** FUNC3 (int*) ; 
 char* FUNC4 (struct ibv_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 

int FUNC7(int argc, char *argv[])
{
	struct ibv_device **dev_list;
	int num_devices, i;

	dev_list = FUNC3(&num_devices);
	if (!dev_list) {
		FUNC5("Failed to get IB devices list");
		return 1;
	}

	FUNC6("    %-16s\t   node GUID\n", "device");
	FUNC6("    %-16s\t----------------\n", "------");

	for (i = 0; i < num_devices; ++i) {
		FUNC6("    %-16s\t%016llx\n",
		       FUNC4(dev_list[i]),
		       (unsigned long long) FUNC0(FUNC2(dev_list[i])));
	}

	FUNC1(dev_list);

	return 0;
}