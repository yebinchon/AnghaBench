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
typedef  scalar_t__ uid_t ;
struct stat {int st_mode; scalar_t__ st_uid; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,...) ; 
 scalar_t__ FUNC5 (char*,struct stat*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 

int
FUNC9(const char *name, struct stat *stp, const char *pw_dir,
    uid_t uid, char *err, size_t errlen)
{
	char buf[PATH_MAX], homedir[PATH_MAX];
	char *cp;
	int comparehome = 0;
	struct stat st;

	if (FUNC3(name, buf) == NULL) {
		FUNC4(err, errlen, "realpath %s failed: %s", name,
		    FUNC7(errno));
		return -1;
	}
	if (pw_dir != NULL && FUNC3(pw_dir, homedir) != NULL)
		comparehome = 1;

	if (!FUNC0(stp->st_mode)) {
		FUNC4(err, errlen, "%s is not a regular file", buf);
		return -1;
	}
	if ((!FUNC2(stp->st_uid) && stp->st_uid != uid) ||
	    (stp->st_mode & 022) != 0) {
		FUNC4(err, errlen, "bad ownership or modes for file %s",
		    buf);
		return -1;
	}

	/* for each component of the canonical path, walking upwards */
	for (;;) {
		if ((cp = FUNC1(buf)) == NULL) {
			FUNC4(err, errlen, "dirname() failed");
			return -1;
		}
		FUNC8(buf, cp, sizeof(buf));

		if (FUNC5(buf, &st) < 0 ||
		    (!FUNC2(st.st_uid) && st.st_uid != uid) ||
		    (st.st_mode & 022) != 0) {
			FUNC4(err, errlen,
			    "bad ownership or modes for directory %s", buf);
			return -1;
		}

		/* If are past the homedir then we can stop */
		if (comparehome && FUNC6(homedir, buf) == 0)
			break;

		/*
		 * dirname should always complete with a "/" path,
		 * but we can be paranoid and check for "." too
		 */
		if ((FUNC6("/", buf) == 0) || (FUNC6(".", buf) == 0))
			break;
	}
	return 0;
}