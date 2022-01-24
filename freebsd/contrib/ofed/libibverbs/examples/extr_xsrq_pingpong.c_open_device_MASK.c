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
struct ibv_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 TYPE_1__ ctx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_device**) ; 
 struct ibv_device** FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (struct ibv_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ibv_device*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static int FUNC6(char *ib_devname)
{
	struct ibv_device **dev_list;
	int i = 0;

	dev_list = FUNC2(NULL);
	if (!dev_list) {
		FUNC0(stderr, "Failed to get IB devices list");
		return -1;
	}

	if (ib_devname) {
		for (; dev_list[i]; ++i) {
			if (!FUNC5(FUNC3(dev_list[i]), ib_devname))
				break;
		}
	}
	if (!dev_list[i]) {
		FUNC0(stderr, "IB device %s not found\n",
			ib_devname ? ib_devname : "");
		return -1;
	}

	ctx.context = FUNC4(dev_list[i]);
	if (!ctx.context) {
		FUNC0(stderr, "Couldn't get context for %s\n",
			FUNC3(dev_list[i]));
		return -1;
	}

	FUNC1(dev_list);
	return 0;
}