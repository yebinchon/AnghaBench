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
typedef  int /*<<< orphan*/  uint64_t ;
struct group {int dummy; } ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ gid_t ;
typedef  int /*<<< orphan*/  cap_channel_t ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 char* gbuffer ; 
 size_t gbufsize ; 
 int FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,struct group*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 

__attribute__((used)) static int
FUNC12(cap_channel_t *chan, const char *cmd, const char *name,
    gid_t gid, struct group *grp, char *buffer, size_t bufsize,
    struct group **result)
{
	nvlist_t *nvl;
	bool getgr_r;
	int error;

	nvl = FUNC7(0);
	FUNC6(nvl, "cmd", cmd);
	if (FUNC11(cmd, "getgrent") == 0 || FUNC11(cmd, "getgrent_r") == 0) {
		/* Add nothing. */
	} else if (FUNC11(cmd, "getgrnam") == 0 ||
	    FUNC11(cmd, "getgrnam_r") == 0) {
		FUNC6(nvl, "name", name);
	} else if (FUNC11(cmd, "getgrgid") == 0 ||
	    FUNC11(cmd, "getgrgid_r") == 0) {
		FUNC5(nvl, "gid", (uint64_t)gid);
	} else {
		FUNC0();
	}
	nvl = FUNC2(chan, nvl);
	if (nvl == NULL) {
		FUNC1(errno != 0);
		*result = NULL;
		return (errno);
	}
	error = (int)FUNC10(nvl, "error");
	if (error != 0) {
		FUNC8(nvl);
		*result = NULL;
		return (error);
	}

	if (!FUNC9(nvl, "gr_name")) {
		/* Not found. */
		FUNC8(nvl);
		*result = NULL;
		return (0);
	}

	getgr_r = (FUNC11(cmd, "getgrent_r") == 0 ||
	    FUNC11(cmd, "getgrnam_r") == 0 || FUNC11(cmd, "getgrgid_r") == 0);

	for (;;) {
		error = FUNC4(nvl, grp, buffer, bufsize);
		if (getgr_r || error != ERANGE)
			break;
		FUNC1(buffer == gbuffer);
		FUNC1(bufsize == gbufsize);
		error = FUNC3();
		if (error != 0)
			break;
		/* Update pointers after resize. */
		buffer = gbuffer;
		bufsize = gbufsize;
	}

	FUNC8(nvl);

	if (error == 0)
		*result = grp;
	else
		*result = NULL;

	return (error);
}