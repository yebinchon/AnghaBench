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
typedef  int /*<<< orphan*/  lastjid ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,char*,char*,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 

__attribute__((used)) static int
FUNC3(const char *mnt)
{
	int jid;
	char lastjid[16];
	char jailpath[MAXPATHLEN];

	/* jail_getv expects name/value strings */
	FUNC1(lastjid, sizeof(lastjid), "%d", 0);

	while ((jid = FUNC0(0, "lastjid", lastjid, "path", &jailpath,
	    NULL)) != -1) {

		/* the jail we've been looking for */
		if (FUNC2(jailpath, mnt) == 0)
			return (jid);

		/* update lastjid and keep on looking */
		FUNC1(lastjid, sizeof(lastjid), "%d", jid);
	}

	return (-1);
}