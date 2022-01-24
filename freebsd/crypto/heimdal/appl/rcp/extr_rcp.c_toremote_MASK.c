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
 int /*<<< orphan*/  _PATH_RSH ; 
 int FUNC0 (char**,char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  cmd ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*,char*,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ eflag ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_1__* pwd ; 
 int remin ; 
 int /*<<< orphan*/  remout ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,char**) ; 
 char* FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (char*) ; 

void
FUNC12(char *targ, int argc, char **argv)
{
	int i;
	char *bp, *host, *src, *suser, *thost, *tuser;

	*targ++ = 0;
	if (*targ == 0)
		targ = ".";

	if ((thost = FUNC9(argv[argc - 1], '@')) != NULL) {
		/* user@host */
		*thost++ = 0;
		tuser = argv[argc - 1];
		if (*tuser == '\0')
			tuser = NULL;
		else if (!FUNC6(tuser))
			FUNC4(1);
	} else {
		thost = argv[argc - 1];
		tuser = NULL;
	}
	thost = FUNC11(thost);

	for (i = 0; i < argc - 1; i++) {
		src = FUNC1(argv[i]);
		if (src) {			/* remote to remote */
			int ret;
			*src++ = 0;
			if (*src == 0)
				src = ".";
			host = FUNC9(argv[i], '@');
			if (host) {
				*host++ = '\0';
				host = FUNC11(host);
				suser = argv[i];
				if (*suser == '\0')
					suser = pwd->pw_name;
				else if (!FUNC6(suser))
					continue;
				ret = FUNC0(&bp,
				    "%d%s %s -l %s -n %d %s '%s%s%s:%s'",
					 _PATH_RSH, eflag ? " -e" : "",
					 host, suser, cmd, src,
				    tuser ? tuser : "", tuser ? "@" : "",
				    thost, targ);
			} else {
				host = FUNC11(argv[i]);
				ret = FUNC0(&bp,
					 "exec %d%s %s -n %d %s '%s%s%s:%s'",
					 _PATH_RSH, eflag ? " -e" : "",
					 host, cmd, src,
					 tuser ? tuser : "", tuser ? "@" : "",
					 thost, targ);
			}
			if (ret == -1)
				FUNC3 (1, "malloc");
			FUNC10(bp);
			FUNC5(bp);
		} else {			/* local to remote */
			if (remin == -1) {
				if (FUNC0(&bp, "%d -t %s", cmd, targ) == -1)
					FUNC3 (1, "malloc");
				host = thost;

				if (FUNC2(host, tuser, bp, &remin, &remout) < 0)
					FUNC4(1);

				if (FUNC7() < 0)
					FUNC4(1);
				FUNC5(bp);
			}
			FUNC8(1, argv+i);
		}
	}
}