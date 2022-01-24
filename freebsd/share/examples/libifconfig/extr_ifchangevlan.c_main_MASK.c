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
 int /*<<< orphan*/  SIOCGETVLAN ; 
 int /*<<< orphan*/  SIOCSETVLAN ; 
#define  SOCKET 128 
 int /*<<< orphan*/  USHRT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,char*,unsigned short) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 char* FUNC9 (char*) ; 
 unsigned short FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

int
FUNC12(int argc, char *argv[])
{
	char *ifname, *parentif;
	unsigned short vlantag;
	const char *errstr;
	ifconfig_handle_t *lifh;

	if (argc != 4) {
		FUNC0(EINVAL, "Invalid number of arguments."
		    " Should provide exactly three arguments: "
		    "INTERFACE, PARENT_INTERFACE and VLAN_TAG.");
	}

	/* We have a static number of arguments. Therefore we can do it simple. */
	ifname = FUNC9(argv[1]);
	parentif = FUNC9(argv[2]);
	vlantag = FUNC10(argv[3], 0, USHRT_MAX, &errstr);

	if (errstr != NULL) {
		FUNC0(1, "VLAN_TAG must be between 0 and %i.\n", USHRT_MAX);
	}

	FUNC8("Interface: %s\nNew VLAN tag: %i\n", ifname, vlantag);

	lifh = FUNC6();
	if (lifh == NULL) {
		FUNC0(ENOMEM, "Failed to open libifconfig handle.");
		return (-1);
	}

	if (FUNC7(lifh, ifname, parentif, vlantag) == 0) {
		FUNC8("Successfully changed vlan tag.\n");
		FUNC2(lifh);
		lifh = NULL;
		FUNC1(ifname);
		FUNC1(parentif);
		return (0);
	}

	switch (FUNC4(lifh)) {
	case SOCKET:
		FUNC11("couldn't create socket. This shouldn't happen.\n");
		break;
	case IOCTL:
		if (FUNC5(lifh) == SIOCGETVLAN) {
			FUNC11("Target interface isn't a VLAN interface.\n");
		}
		if (FUNC5(lifh) == SIOCSETVLAN) {
			FUNC11(
				"Couldn't change VLAN properties of interface.\n");
		}
		break;
	default:
		FUNC11(
			"This is a thorough example accommodating for temporary"
			" 'not implemented yet' errors. That's likely what happened"
			" now. If not, your guess is as good as mine. ;)"
			" Error code: %d\n", FUNC3(
				lifh));
		break;
	}

	FUNC2(lifh);
	lifh = NULL;
	FUNC1(ifname);
	FUNC1(parentif);
	return (-1);
}