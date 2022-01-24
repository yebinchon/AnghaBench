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
 int /*<<< orphan*/  SIOCIFCREATE2 ; 
#define  SOCKET 128 
 int /*<<< orphan*/  USHRT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,char**,char*,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,...) ; 
 char* FUNC9 (char*) ; 
 unsigned short FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

int
FUNC12(int argc, char *argv[])
{
	char *parentif, *ifactualname;
	unsigned short vlantag;
	const char *errstr;
	ifconfig_handle_t *lifh;

	if (argc != 3) {
		FUNC0(EINVAL, "Invalid number of arguments."
		    " Should provide exactly two arguments: "
		    "PARENT_INTERFACE and VLAN_TAG.");
	}

	/* We have a static number of arguments. Therefore we can do it simple. */
	parentif = FUNC9(argv[1]);
	vlantag = FUNC10(argv[2], 0, USHRT_MAX, &errstr);

	if (errstr != NULL) {
		FUNC0(1, "VLAN_TAG must be between 0 and %i.\n", USHRT_MAX);
	}

	FUNC8("Parent interface: %s\nVLAN tag: %i\n", parentif, vlantag);

	lifh = FUNC7();
	if (lifh == NULL) {
		FUNC0(ENOMEM, "Failed to open libifconfig handle.");
		return (-1);
	}

	if (FUNC3(lifh, "vlan", &ifactualname,
	    parentif, vlantag) == 0) {
		FUNC8("Successfully created interface '%s'\n", ifactualname);
		FUNC2(lifh);
		lifh = NULL;
		FUNC1(parentif);
		FUNC1(ifactualname);
		return (0);
	}

	switch (FUNC5(lifh)) {
	case SOCKET:
		FUNC11("couldn't create socket. This shouldn't happen.\n");
		break;
	case IOCTL:
		if (FUNC6(lifh) == SIOCIFCREATE2) {
			FUNC11(
				"Failed to create interface (SIOCIFCREATE2)\n");
		}
		break;
	default:
		FUNC11(
			"This is a thorough example accommodating for temporary"
			" 'not implemented yet' errors. That's likely what happened"
			" now. If not, your guess is as good as mine. ;)"
			" Error code: %d\n", FUNC4(
				lifh));
		break;
	}

	FUNC2(lifh);
	lifh = NULL;
	FUNC1(parentif);
	FUNC1(ifactualname);
	return (-1);
}