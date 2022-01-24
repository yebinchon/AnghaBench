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

/* Variables and functions */
 int /*<<< orphan*/  RP_ALLOW_STDIN ; 
 int /*<<< orphan*/  confirm ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  lifetime ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (int,int,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC5(int agent_fd, int add, const char *id)
{
	char *pin = NULL;
	int r, ret = -1;

	if (add) {
		if ((pin = FUNC2("Enter passphrase for PKCS#11: ",
		    RP_ALLOW_STDIN)) == NULL)
			return -1;
	}

	if ((r = FUNC4(agent_fd, add, id, pin == NULL ? "" : pin,
	    lifetime, confirm)) == 0) {
		FUNC0(stderr, "Card %s: %s\n",
		    add ? "added" : "removed", id);
		ret = 0;
	} else {
		FUNC0(stderr, "Could not %s card \"%s\": %s\n",
		    add ? "add" : "remove", id, FUNC3(r));
		ret = -1;
	}
	FUNC1(pin);
	return ret;
}