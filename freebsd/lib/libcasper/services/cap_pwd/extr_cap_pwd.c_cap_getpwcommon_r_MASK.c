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
typedef  scalar_t__ uid_t ;
struct passwd {int dummy; } ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  cap_channel_t ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 char* gbuffer ; 
 size_t gbufsize ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ *,struct passwd*,char*,size_t) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 

__attribute__((used)) static int
FUNC12(cap_channel_t *chan, const char *cmd, const char *login,
    uid_t uid, struct passwd *pwd, char *buffer, size_t bufsize,
    struct passwd **result)
{
	nvlist_t *nvl;
	bool getpw_r;
	int error;

	nvl = FUNC5(0);
	FUNC4(nvl, "cmd", cmd);
	if (FUNC11(cmd, "getpwent") == 0 || FUNC11(cmd, "getpwent_r") == 0) {
		/* Add nothing. */
	} else if (FUNC11(cmd, "getpwnam") == 0 ||
	    FUNC11(cmd, "getpwnam_r") == 0) {
		FUNC4(nvl, "name", login);
	} else if (FUNC11(cmd, "getpwuid") == 0 ||
	    FUNC11(cmd, "getpwuid_r") == 0) {
		FUNC3(nvl, "uid", (uint64_t)uid);
	} else {
		FUNC0();
	}
	nvl = FUNC2(chan, nvl);
	if (nvl == NULL) {
		FUNC1(errno != 0);
		*result = NULL;
		return (errno);
	}
	error = (int)FUNC8(nvl, "error");
	if (error != 0) {
		FUNC6(nvl);
		*result = NULL;
		return (error);
	}

	if (!FUNC7(nvl, "pw_name")) {
		/* Not found. */
		FUNC6(nvl);
		*result = NULL;
		return (0);
	}

	getpw_r = (FUNC11(cmd, "getpwent_r") == 0 ||
	    FUNC11(cmd, "getpwnam_r") == 0 || FUNC11(cmd, "getpwuid_r") == 0);

	for (;;) {
		error = FUNC10(nvl, pwd, buffer, bufsize);
		if (getpw_r || error != ERANGE)
			break;
		FUNC1(buffer == gbuffer);
		FUNC1(bufsize == gbufsize);
		error = FUNC9();
		if (error != 0)
			break;
		/* Update pointers after resize. */
		buffer = gbuffer;
		bufsize = gbufsize;
	}

	FUNC6(nvl);

	if (error == 0)
		*result = pwd;
	else
		*result = NULL;

	return (error);
}