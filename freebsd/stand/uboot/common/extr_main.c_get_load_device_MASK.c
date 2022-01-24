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
struct TYPE_2__ {int d_unit; } ;
struct disk_devdesc {int d_slice; int d_partition; TYPE_1__ dd; } ;

/* Variables and functions */
 int DEV_TYP_NONE ; 
 int DEV_TYP_STOR ; 
 int D_PARTWILD ; 
 int D_SLICEWILD ; 
 scalar_t__ FUNC0 (struct disk_devdesc*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 size_t FUNC4 (char const*,char*) ; 
 size_t FUNC5 (char const*) ; 
 int FUNC6 (char const*,char**,int) ; 
 int FUNC7 (char const*,char**,int) ; 
 char* FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9(int *type, int *unit, int *slice, int *partition)
{
	struct disk_devdesc dev;
	char *devstr;
	const char *p;
	char *endp;

	*type = DEV_TYP_NONE;
	*unit = -1;
	*slice = D_SLICEWILD;
	*partition = D_PARTWILD;

	devstr = FUNC8("loaderdev");
	if (devstr == NULL) {
		FUNC3("U-Boot env: loaderdev not set, will probe all devices.\n");
		return;
	}
	FUNC3("U-Boot env: loaderdev='%s'\n", devstr);

	p = FUNC1(devstr, type);

	/*
	 * If type is DEV_TYP_STOR we have a disk-like device.  If the remainder
	 * of the string contains spaces, dots, or a colon in any location other
	 * than the last char, it's legacy format.  Otherwise it might be
	 * standard loader(8) format (e.g., disk0s2a or mmc1p12), so try to
	 * parse the remainder of the string as such, and if it works, return
	 * those results. Otherwise we'll fall through to the code that parses
	 * the legacy format.
	 */
	if (*type & DEV_TYP_STOR) {
		size_t len = FUNC5(p);
		if (FUNC4(p, " .") == len && FUNC4(p, ":") >= len - 1 &&
		    FUNC0(&dev, p, NULL) == 0) {
			*unit = dev.dd.d_unit;
			*slice = dev.d_slice;
			*partition = dev.d_partition;
			return;
		}
	}

	/* Ignore optional spaces after the device name. */
	while (*p == ' ')
		p++;

	/* Unknown device name, or a known name without unit number.  */
	if ((*type == DEV_TYP_NONE) || (*p == '\0')) {
		return;
	}

	/* Malformed unit number. */
	if (!FUNC2(*p)) {
		*type = DEV_TYP_NONE;
		return;
	}

	/* Guaranteed to extract a number from the string, as *p is a digit. */
	*unit = FUNC6(p, &endp, 10);
	p = endp;

	/* Known device name with unit number and nothing else. */
	if (*p == '\0') {
		return;
	}

	/* Device string is malformed beyond unit number. */
	if (*p != ':') {
		*type = DEV_TYP_NONE;
		*unit = -1;
		return;
	}

	p++;

	/* No slice and partition specification. */
	if ('\0' == *p )
		return;

	/* Only DEV_TYP_STOR devices can have a slice specification. */
	if (!(*type & DEV_TYP_STOR)) {
		*type = DEV_TYP_NONE;
		*unit = -1;
		return;
	}

	*slice = FUNC7(p, &endp, 10);

	/* Malformed slice number. */
	if (p == endp) {
		*type = DEV_TYP_NONE;
		*unit = -1;
		*slice = D_SLICEWILD;
		return;
	}

	p = endp;
	
	/* No partition specification. */
	if (*p == '\0')
		return;

	/* Device string is malformed beyond slice number. */
	if (*p != '.') {
		*type = DEV_TYP_NONE;
		*unit = -1;
		*slice = D_SLICEWILD;
		return;
	}

	p++;

	/* No partition specification. */
	if (*p == '\0')
		return;

	*partition = FUNC6(p, &endp, 10);
	p = endp;

	/*  Full, valid device string. */
	if (*endp == '\0')
		return;

	/* Junk beyond partition number. */
	*type = DEV_TYP_NONE;
	*unit = -1;
	*slice = D_SLICEWILD;
	*partition = D_PARTWILD;
}