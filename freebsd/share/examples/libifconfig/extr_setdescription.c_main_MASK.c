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
typedef  int /*<<< orphan*/  ifconfig_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
#define  IOCTL 129 
#define  SOCKET 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 char* FUNC11 (char*) ; 

int
FUNC12(int argc, char *argv[])
{
	char *ifname, *ifdescr, *curdescr;
	ifconfig_handle_t *lifh;

	if (argc != 3) {
		FUNC1(EINVAL, "Invalid number of arguments."
		    " First argument should be interface name, second argument"
		    " should be the description to set.");
	}

	/* We have a static number of arguments. Therefore we can do it simple. */
	ifname = FUNC11(argv[1]);
	ifdescr = FUNC11(argv[2]);
	curdescr = NULL;

	FUNC10("Interface name: %s\n", ifname);

	lifh = FUNC8();
	if (lifh == NULL) {
		FUNC1(ENOMEM, "Failed to open libifconfig handle.");
		return (-1);
	}

	if (FUNC7(lifh, ifname, &curdescr) == 0) {
		FUNC10("Old description: %s\n", curdescr);
	}

	FUNC10("New description: %s\n\n", ifdescr);

	if (FUNC9(lifh, ifname, ifdescr) == 0) {
		FUNC10("New description successfully set.\n");
	} else {
		switch (FUNC5(lifh)) {
		case SOCKET:
			FUNC0(FUNC4(lifh), "Socket error");
			break;
		case IOCTL:
			FUNC0(FUNC4(
				    lifh), "IOCTL(%lu) error",
			    FUNC6(lifh));
			break;
		default:
			FUNC0(FUNC4(lifh), "Other error");
			break;
		}
	}

	FUNC2(ifname);
	FUNC2(ifdescr);
	FUNC2(curdescr);
	ifname = NULL;
	ifdescr = NULL;
	curdescr = NULL;

	FUNC3(lifh);
	return (0);
}