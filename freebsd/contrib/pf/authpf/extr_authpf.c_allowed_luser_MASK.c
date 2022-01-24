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
struct passwd {char* pw_class; char* pw_name; int /*<<< orphan*/  pw_gid; } ;
struct group {scalar_t__ gr_gid; } ;
typedef  scalar_t__ gid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int NGROUPS ; 
 char* PATH_ALLOWFILE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct group* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,scalar_t__*,int*) ; 
 scalar_t__ FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 char* FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,char*,char*,...) ; 

__attribute__((used)) static int
FUNC14(struct passwd *pw)
{
	char *buf,*lbuf;
	int	 matched;
	size_t	 len;
	FILE	*f;

	if ((f = FUNC3(PATH_ALLOWFILE, "r")) == NULL) {
		if (errno == ENOENT) {
			/*
			 * allowfile doesn't exist, thus this gateway
			 * isn't restricted to certain users...
			 */
			return (1);
		}

		/*
		 * luser may in fact be allowed, but we can't open
		 * the file even though it's there. probably a config
		 * problem.
		 */
		FUNC13(LOG_ERR, "cannot open allowed users file %s (%s)",
		    PATH_ALLOWFILE, FUNC12(errno));
		return (0);
	} else {
		/*
		 * /etc/authpf/authpf.allow exists, thus we do a linear
		 * search to see if they are allowed.
		 * also, if username "*" exists, then this is a
		 * "public" gateway, such as it is, so let
		 * everyone use it.
		 */
		int gl_init = 0, ngroups = NGROUPS + 1;
		gid_t groups[NGROUPS + 1];

		lbuf = NULL;
		matched = 0;

		while ((buf = FUNC2(f, &len))) {
			
			if (buf[len - 1] == '\n')
				buf[len - 1] = '\0';
			else {
				if ((lbuf = (char *)FUNC8(len + 1)) == NULL)
					FUNC0(1, NULL);
				FUNC9(lbuf, buf, len);
				lbuf[len] = '\0';
				buf = lbuf;
			}

			if (buf[0] == '@') {
				/* check login class */
				if (FUNC11(pw->pw_class, buf + 1) == 0)
					matched++;
			} else if (buf[0] == '%') {
				/* check group membership */
				int cnt; 
				struct group *group;

				if ((group = FUNC6(buf + 1)) == NULL) {
					FUNC13(LOG_ERR,
					    "invalid group '%s' in %s (%s)",
					    buf + 1, PATH_ALLOWFILE,
				 	    FUNC12(errno));
					return (0);
				}

				if (!gl_init) {
					(void) FUNC7(pw->pw_name,
					    pw->pw_gid, groups, &ngroups);
					gl_init++;
				}
			
				for ( cnt = 0; cnt < ngroups; cnt++) {
					if (group->gr_gid == groups[cnt]) {
						matched++;
						break;
					}
				}
			} else {
				/* check username and wildcard */
				matched = FUNC11(pw->pw_name, buf) == 0 ||
				    FUNC11("*", buf) == 0;
			}

			if (lbuf != NULL) {
				FUNC5(lbuf);
				lbuf = NULL;
			}

			if (matched)
				return (1); /* matched an allowed user/group */
		}
		FUNC13(LOG_INFO, "denied access to %s: not listed in %s",
		    pw->pw_name, PATH_ALLOWFILE);

		/* reuse buf */
		FUNC10(buf, "%s", "\n\nSorry, you are not allowed to use this facility!\n");
		FUNC4(buf, stdout);
	}
	FUNC1(stdout);
	return (0);
}