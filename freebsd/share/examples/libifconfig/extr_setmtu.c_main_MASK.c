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
 int /*<<< orphan*/  SIOCSIFMTU ; 
#define  SOCKET 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 char* FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

int
FUNC12(int argc, char *argv[])
{
	char *ifname, *ptr;
	int mtu;
	ifconfig_handle_t *lifh;

	if (argc != 3) {
		FUNC0(EINVAL, "Invalid number of arguments."
		    " First argument should be interface name, second argument"
		    " should be the MTU to set.");
	}

	/* We have a static number of arguments. Therefore we can do it simple. */
	ifname = FUNC9(argv[1]);
	mtu = (int)FUNC10(argv[2], &ptr, 10);

	FUNC8("Interface name: %s\n", ifname);
	FUNC8("New MTU: %d", mtu);

	lifh = FUNC6();
	if (lifh == NULL) {
		FUNC0(ENOMEM, "Failed to open libifconfig handle.");
		return (-1);
	}

	if (FUNC7(lifh, ifname, mtu) == 0) {
		FUNC8("Successfully changed MTU of %s to %d\n", ifname, mtu);
		FUNC2(lifh);
		lifh = NULL;
		FUNC1(ifname);
		return (0);
	}

	switch (FUNC4(lifh)) {
	case SOCKET:
		FUNC11("couldn't create socket. This shouldn't happen.\n");
		break;
	case IOCTL:
		if (FUNC5(lifh) == SIOCSIFMTU) {
			FUNC11("Failed to set MTU (SIOCSIFMTU)\n");
		} else {
			FUNC11(
				"Failed to set MTU due to error in unexpected ioctl() call %lu. Error code: %i.\n",
				FUNC5(lifh),
				FUNC3(lifh));
		}
		break;
	default:
		FUNC11(
			"Should basically never end up here in this example.\n");
		break;
	}

	FUNC2(lifh);
	lifh = NULL;
	FUNC1(ifname);
	return (-1);
}