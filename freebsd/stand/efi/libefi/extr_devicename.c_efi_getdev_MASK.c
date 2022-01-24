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
struct devdesc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct devdesc**,char const*,char const**) ; 
 char const* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char) ; 

int
FUNC3(void **vdev, const char *devspec, const char **path)
{
	struct devdesc **dev = (struct devdesc **)vdev;
	int rv;

	/*
	 * If it looks like this is just a path and no device, then
	 * use the current device instead.
	 */
	if (devspec == NULL || *devspec == '/' || !FUNC2(devspec, ':')) {
		rv = FUNC0(dev, FUNC1("currdev"), NULL);
		if (rv == 0 && path != NULL)
			*path = devspec;
		return (rv);
	}

	/* Parse the device name off the beginning of the devspec. */
	return (FUNC0(dev, devspec, path));
}