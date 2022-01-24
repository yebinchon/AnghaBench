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
struct disk_devdesc {int dummy; } ;

/* Variables and functions */
 char const* FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char) ; 
 int FUNC2 (struct disk_devdesc**,char const*,char const**) ; 

int
FUNC3(void **vdev, const char *devspec, const char **path)
{
    struct disk_devdesc **dev = (struct disk_devdesc **)vdev;
    int				rv;
    
    /*
     * If it looks like this is just a path and no
     * device, go with the current device.
     */
    if ((devspec == NULL) || 
	(devspec[0] == '/') || 
	(FUNC1(devspec, ':') == NULL)) {

	if (((rv = FUNC2(dev, FUNC0("currdev"), NULL)) == 0) &&
	    (path != NULL))
		*path = devspec;
	return(rv);
    }
    
    /*
     * Try to parse the device name off the beginning of the devspec
     */
    return(FUNC2(dev, devspec, path));
}