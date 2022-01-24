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
struct req {char** p; int psz; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  MAN_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char**,size_t*,int /*<<< orphan*/ *) ; 
 char** FUNC4 (char**,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC10(struct req *req)
{
	FILE	*fp;
	char	*dp;
	size_t	 dpsz;
	ssize_t	 len;

	if ((fp = FUNC1("manpath.conf", "r")) == NULL) {
		FUNC8("%s/manpath.conf", MAN_DIR);
		FUNC5();
		FUNC0(EXIT_FAILURE);
	}

	dp = NULL;
	dpsz = 0;

	while ((len = FUNC3(&dp, &dpsz, fp)) != -1) {
		if (dp[len - 1] == '\n')
			dp[--len] = '\0';
		req->p = FUNC4(req->p,
		    (req->psz + 1) * sizeof(char *));
		if ( ! FUNC7(dp)) {
			FUNC9("%s/manpath.conf contains "
			    "unsafe path \"%s\"", MAN_DIR, dp);
			FUNC5();
			FUNC0(EXIT_FAILURE);
		}
		if (FUNC6(dp, '/') != NULL) {
			FUNC9("%s/manpath.conf contains "
			    "path with slash \"%s\"", MAN_DIR, dp);
			FUNC5();
			FUNC0(EXIT_FAILURE);
		}
		req->p[req->psz++] = dp;
		dp = NULL;
		dpsz = 0;
	}
	FUNC2(dp);

	if (req->p == NULL) {
		FUNC9("%s/manpath.conf is empty", MAN_DIR);
		FUNC5();
		FUNC0(EXIT_FAILURE);
	}
}