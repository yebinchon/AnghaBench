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
 int MAXPATHLEN ; 
 int /*<<< orphan*/  be ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char**,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC9 (int) ; 

int
FUNC10(int argc, char *argv[])
{
	char path[MAXPATHLEN];
	char *cmd, *name, *target;
	int jid;

	/* Store alias used */
	cmd = argv[0];

	if (argc != 2) {
		FUNC5(stderr, "bectl %s: wrong number of arguments\n", cmd);
		return (FUNC9(false));
	}

	target = argv[1];

	/* Locate the jail */
	if ((jid = FUNC3(target)) == -1) {
		FUNC5(stderr, "bectl %s: failed to locate BE by '%s'\n", cmd,
		    target);
		return (1);
	}

	FUNC4(&path, MAXPATHLEN);
	name = FUNC7(jid);
	if (FUNC8(0, "name", name, "path", path, NULL) != jid) {
		FUNC6(name);
		FUNC5(stderr,
		    "bectl %s: failed to get path for jail requested by '%s'\n",
		    cmd, target);
		return (1);
	}

	FUNC6(name);

	if (FUNC0(be, path, NULL) != 0) {
		FUNC5(stderr, "bectl %s: jail requested by '%s' not a BE\n",
		    cmd, target);
		return (1);
	}

	FUNC2(path, jid);
	FUNC1(be, target, 0);

	return (0);
}