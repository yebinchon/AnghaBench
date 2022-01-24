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
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct passwd {scalar_t__ pw_uid; int /*<<< orphan*/  pw_dir; } ;
typedef  int /*<<< orphan*/  ss ;
typedef  int /*<<< orphan*/  pbuf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int S_IWGRP ; 
 int S_IWOTH ; 
 char* _PATH_HEQUIV ; 
 scalar_t__ __check_rhosts_file ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct sockaddr const*,int,char const*,char const*) ; 
 char* __rcmd_errstr ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 () ; 
 struct passwd* FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr_storage*,void const*,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int) ; 

int
FUNC13(const void *ra, int rlen, int superuser, const char *ruser,
    const char *luser)
{
	char *cp;
	struct stat sbuf;
	struct passwd *pwd;
	FILE *hostf;
	uid_t uid;
	int first;
	char pbuf[MAXPATHLEN];
	const struct sockaddr *raddr;
	struct sockaddr_storage ss;

	/* avoid alignment issue */
	if (rlen > sizeof(ss)) 
		return(-1);
	FUNC9(&ss, ra, rlen);
	raddr = (struct sockaddr *)&ss;

	first = 1;
	hostf = superuser ? NULL : FUNC5(_PATH_HEQUIV, "re");
again:
	if (hostf) {
		if (FUNC1(hostf, raddr, rlen, luser, ruser) == 0) {
			(void)FUNC3(hostf);
			return (0);
		}
		(void)FUNC3(hostf);
	}
	if (first == 1 && (__check_rhosts_file || superuser)) {
		first = 0;
		if ((pwd = FUNC7(luser)) == NULL)
			return (-1);
		(void)FUNC12(pbuf, pwd->pw_dir, sizeof(pbuf));
		(void)FUNC11(pbuf, "/.rhosts", sizeof(pbuf));

		/*
		 * Change effective uid while opening .rhosts.  If root and
		 * reading an NFS mounted file system, can't read files that
		 * are protected read/write owner only.
		 */
		uid = FUNC6();
		(void)FUNC10(pwd->pw_uid);
		hostf = FUNC5(pbuf, "re");
		(void)FUNC10(uid);

		if (hostf == NULL)
			return (-1);
		/*
		 * If not a regular file, or is owned by someone other than
		 * user or root or if writeable by anyone but the owner, quit.
		 */
		cp = NULL;
		if (FUNC8(pbuf, &sbuf) < 0)
			cp = ".rhosts lstat failed";
		else if (!FUNC0(sbuf.st_mode))
			cp = ".rhosts not regular file";
		else if (FUNC2(FUNC4(hostf), &sbuf) < 0)
			cp = ".rhosts fstat failed";
		else if (sbuf.st_uid && sbuf.st_uid != pwd->pw_uid)
			cp = "bad .rhosts owner";
		else if (sbuf.st_mode & (S_IWGRP|S_IWOTH))
			cp = ".rhosts writeable by other than owner";
		/* If there were any problems, quit. */
		if (cp) {
			__rcmd_errstr = cp;
			(void)FUNC3(hostf);
			return (-1);
		}
		goto again;
	}
	return (-1);
}