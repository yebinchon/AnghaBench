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
typedef  int u_int ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ EOF ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int MAXPATHLEN ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int,char*,char const*,char*) ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char const*,...) ; 

__attribute__((used)) static int
FUNC10(const char *luserdir, char *l_user)
{
	FILE	*f;
	int	 n;
	char	 tmp[MAXPATHLEN];

	n = FUNC6(tmp, sizeof(tmp), "%s/%s", luserdir, l_user);
	if (n < 0 || (u_int)n >= sizeof(tmp)) {
		FUNC9(LOG_ERR, "provided banned directory line too long (%s)",
		    luserdir);
		return (0);
	}
	if ((f = FUNC4(tmp, "r")) == NULL) {
		if (errno == ENOENT) {
			/*
			 * file or dir doesn't exist, so therefore
			 * this luser isn't banned..  all is well
			 */
			return (1);
		} else {
			/*
			 * luser may in fact be banned, but we can't open the
			 * file even though it's there. probably a config
			 * problem.
			 */
			FUNC9(LOG_ERR, "cannot open banned file %s (%s)",
			    tmp, FUNC7(errno));
			return (0);
		}
	} else {
		/*
		 * luser is banned - spit the file at them to
		 * tell what they can do and where they can go.
		 */
		FUNC9(LOG_INFO, "denied access to %s: %s exists",
		    l_user, tmp);

		/* reuse tmp */
		FUNC8(tmp, "\n\n-**- Sorry, you have been banned! -**-\n\n",
		    sizeof(tmp));
		while (FUNC5(tmp, stdout) != EOF && !FUNC1(f)) {
			if (FUNC3(tmp, sizeof(tmp), f) == NULL) {
				FUNC2(stdout);
				FUNC0(f);
				return (0);
			}
		}
		FUNC0(f);
	}
	FUNC2(stdout);
	return (0);
}