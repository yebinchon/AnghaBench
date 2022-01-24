#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_4__ {scalar_t__ tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  PATH_PFCTL ; 
 int /*<<< orphan*/  PATH_PFRULES ; 
 int /*<<< orphan*/  PATH_USER_DIR ; 
 TYPE_1__ Tend ; 
 TYPE_1__ Tstart ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  anchorname ; 
 int FUNC1 (char**,char*,char const*,...) ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 char const* rulesetname ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (char*,struct stat*) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ user_ip ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(int add, const char *l_user, const char *ip_src)
{
	char	*fdpath = NULL, *userstr = NULL, *ipstr = NULL;
	char	*rsn = NULL, *fn = NULL;
	pid_t	pid;
	gid_t   gid;
	int	s;

	if (add) {
		struct stat sb;
		char *pargv[13] = {
			"pfctl", "-p", "/dev/pf", "-q", "-a", "anchor/ruleset",
			"-D", "user_id=X", "-D", "user_ip=X", "-f", "file", NULL
		};

		if (l_user == NULL || !l_user[0] || ip_src == NULL || !ip_src[0]) {
			FUNC12(LOG_ERR, "invalid luser/ipsrc");
			goto error;
		}

		if (FUNC1(&rsn, "%s/%s", anchorname, rulesetname) == -1)
			goto no_mem;
		if (FUNC1(&fdpath, "/dev/fd/%s", dev) == -1)
			goto no_mem;
		if (FUNC1(&ipstr, "user_ip=%s", ip_src) == -1)
			goto no_mem;
		if (FUNC1(&userstr, "user_id=%s", l_user) == -1)
			goto no_mem;
		if (FUNC1(&fn, "%s/%s/authpf.rules",
		    PATH_USER_DIR, l_user) == -1)
			goto no_mem;
		if (FUNC10(fn, &sb) == -1) {
			FUNC5(fn);
			if ((fn = FUNC11(PATH_PFRULES)) == NULL)
				goto no_mem;
		}
		pargv[2] = fdpath;
		pargv[5] = rsn;
		pargv[7] = userstr;
		if (user_ip) {
			pargv[9] = ipstr;
			pargv[11] = fn;
		} else {
			pargv[8] = "-f";
			pargv[9] = fn;
			pargv[10] = NULL;
		}

		switch (pid = FUNC4()) {
		case -1:
			FUNC12(LOG_ERR, "fork failed");
			goto error;
		case 0:
			/* revoke group privs before exec */
			gid = FUNC6();
			if (FUNC9(gid, gid) == -1) {
				FUNC2(1, "setregid");
			}
			FUNC3(PATH_PFCTL, pargv);
			FUNC14("exec of %s failed", PATH_PFCTL);
			FUNC0(1);
		}

		/* parent */
		FUNC13(pid, &s, 0);
		if (s != 0) {
			FUNC12(LOG_ERR, "pfctl exited abnormally");
			goto error;
		}

		FUNC7(&Tstart, NULL);
		FUNC12(LOG_INFO, "allowing %s, user %s", ip_src, l_user);
	} else {
		FUNC8();

		FUNC7(&Tend, NULL);
		FUNC12(LOG_INFO, "removed %s, user %s - duration %ju seconds",
		    ip_src, l_user, (uintmax_t)(Tend.tv_sec - Tstart.tv_sec));
	}
	return (0);
no_mem:
	FUNC12(LOG_ERR, "malloc failed");
error:
	FUNC5(fdpath);
	FUNC5(rsn);
	FUNC5(userstr);
	FUNC5(ipstr);
	FUNC5(fn);
	return (-1);
}