#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* pw_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  _PATH_CP ; 
 int FUNC0 (char**,char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  cmd ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  errs ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ iamrecursive ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ pflag ; 
 TYPE_1__* pwd ; 
 int remin ; 
 int remout ; 
 int /*<<< orphan*/  FUNC7 (int,char**) ; 
 char* FUNC8 (char*,char) ; 
 scalar_t__ FUNC9 (char*) ; 

void
FUNC10(int argc, char **argv)
{
	int i;
	char *bp, *host, *src, *suser;

	for (i = 0; i < argc - 1; i++) {
		int ret;

		if (!(src = FUNC2(argv[i]))) {		/* Local to local. */
			ret = FUNC0(&bp, "exec %d%s%s %s %s", _PATH_CP,
			    iamrecursive ? " -PR" : "", pflag ? " -p" : "",
			    argv[i], argv[argc - 1]);
			if (ret == -1)
				FUNC4 (1, "malloc");
			if (FUNC9(bp))
				++errs;
			FUNC5(bp);
			continue;
		}
		*src++ = 0;
		if (*src == 0)
			src = ".";
		if ((host = FUNC8(argv[i], '@')) == NULL) {
			host = argv[i];
			suser = pwd->pw_name;
		} else {
			*host++ = 0;
			suser = argv[i];
			if (*suser == '\0')
				suser = pwd->pw_name;
			else if (!FUNC6(suser))
				continue;
		}
		ret = FUNC0(&bp, "%d -f %s", cmd, src);
		if (ret == -1)
			FUNC4 (1, "malloc");
		if (FUNC3(host, suser, bp, &remin, &remout) < 0) {
			FUNC5(bp);
			++errs;
			continue;
		}
		FUNC5(bp);
		FUNC7(1, argv + argc - 1);
		FUNC1(remin);
		remin = remout = -1;
	}
}