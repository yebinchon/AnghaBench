#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * list; } ;
typedef  TYPE_1__ arglist ;
typedef  int /*<<< orphan*/  alist ;

/* Variables and functions */
 char* _PATH_CP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  cmd ; 
 scalar_t__ FUNC2 (char*,char*,int,char*,int*,int*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  errs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ iamrecursive ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (char*,char**,char**,int*,char**) ; 
 int /*<<< orphan*/  FUNC10 (char*,char**,char**,char**) ; 
 scalar_t__ pflag ; 
 int remin ; 
 int remout ; 
 int /*<<< orphan*/  FUNC11 (int,char**,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC12 (char**,char*,int /*<<< orphan*/ ,char*,char*) ; 

void
FUNC13(int argc, char **argv)
{
	char *bp, *host = NULL, *src = NULL, *suser = NULL;
	arglist alist;
	int i, r, sport = -1;

	FUNC7(&alist, '\0', sizeof(alist));
	alist.list = NULL;

	for (i = 0; i < argc - 1; i++) {
		FUNC5(suser);
		FUNC5(host);
		FUNC5(src);
		r = FUNC9(argv[i], &suser, &host, &sport, &src);
		if (r == -1) {
			FUNC4(stderr, "%s: invalid uri\n", argv[i]);
			++errs;
			continue;
		}
		if (r != 0)
			FUNC10(argv[i], &suser, &host, &src);
		if (suser != NULL && !FUNC8(suser)) {
			++errs;
			continue;
		}
		if (!host) {	/* Local to local. */
			FUNC6(&alist);
			FUNC0(&alist, "%s", _PATH_CP);
			if (iamrecursive)
				FUNC0(&alist, "-r");
			if (pflag)
				FUNC0(&alist, "-p");
			FUNC0(&alist, "--");
			FUNC0(&alist, "%s", argv[i]);
			FUNC0(&alist, "%s", argv[argc-1]);
			if (FUNC3(&alist))
				++errs;
			continue;
		}
		/* Remote to local. */
		FUNC12(&bp, "%s -f %s%s",
		    cmd, *src == '-' ? "-- " : "", src);
		if (FUNC2(host, suser, sport, bp, &remin, &remout) < 0) {
			FUNC5(bp);
			++errs;
			continue;
		}
		FUNC5(bp);
		FUNC11(1, argv + argc - 1, src);
		(void) FUNC1(remin);
		remin = remout = -1;
	}
	FUNC5(suser);
	FUNC5(host);
	FUNC5(src);
}