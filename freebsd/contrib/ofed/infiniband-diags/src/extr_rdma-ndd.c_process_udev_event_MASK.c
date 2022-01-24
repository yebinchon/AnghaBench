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
struct udev_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  mon ; 
 scalar_t__ FUNC0 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,char const*) ; 
 char* FUNC2 (struct udev_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct udev_device*) ; 
 char* FUNC4 (struct udev_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct udev_device*) ; 
 struct udev_device* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*,int) ; 

__attribute__((used)) static void FUNC8(int ud_fd, const char *hostname)
{
	struct udev_device *dev;

	dev = FUNC6(mon);
	if (dev) {
		const char *device = FUNC4(dev);
		const char *action = FUNC2(dev);

		FUNC1(LOG_INFO, "Device event: %s, %s, %s\n",
			FUNC3(dev),
			device, action);

		if (device && action
		    && FUNC0(action, "add", sizeof("add")) == 0)
			FUNC7(device, hostname, 1);

		FUNC5(dev);
	}
}