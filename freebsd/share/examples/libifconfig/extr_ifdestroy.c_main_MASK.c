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
 int /*<<< orphan*/  SIOCIFDESTROY ; 
#define  SOCKET 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int
FUNC10(int argc, char *argv[])
{
	char *ifname;
	ifconfig_handle_t *lifh;

	if (argc != 2) {
		FUNC0(EINVAL, "Invalid number of arguments."
		    " Only one argument is accepted, and it should be the name"
		    " of the interface to be destroyed.");
	}

	/* We have a static number of arguments. Therefore we can do it simple. */
	ifname = FUNC8(argv[1]);

	FUNC7("Interface name: %s\n", ifname);

	lifh = FUNC6();
	if (lifh == NULL) {
		FUNC0(ENOMEM, "Failed to open libifconfig handle.");
		return (-1);
	}

	if (FUNC3(lifh, ifname) == 0) {
		FUNC7("Successfully destroyed interface '%s'.", ifname);
		FUNC2(lifh);
		lifh = NULL;
		FUNC1(ifname);
		return (0);
	}

	switch (FUNC4(lifh)) {
	case SOCKET:
		FUNC9("couldn't create socket. This shouldn't happen.\n");
		break;
	case IOCTL:
		if (FUNC5(lifh) == SIOCIFDESTROY) {
			FUNC9(
				"Failed to destroy interface (SIOCIFDESTROY)\n");
		}
		break;
	default:
		FUNC9(
			"Should basically never end up here in this example.\n");
		break;
	}

	FUNC2(lifh);
	lifh = NULL;
	FUNC1(ifname);
	return (-1);
}