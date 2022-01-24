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
struct stat {scalar_t__ st_uid; int st_mode; } ;
struct passwd {int dummy; } ;
typedef  int /*<<< orphan*/  Options ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int READCONF_MAX_DEPTH ; 
 int SSHCONF_CHECKPERM ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC7 (char**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,struct passwd*,char const*,char const*,char*,char const*,int,int*,int,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(const char *filename, struct passwd *pw,
    const char *host, const char *original_host, Options *options,
    int flags, int *activep, int depth)
{
	FILE *f;
	char *line = NULL;
	size_t linesize = 0;
	int linenum;
	int bad_options = 0;

	if (depth < 0 || depth > READCONF_MAX_DEPTH)
		FUNC1("Too many recursive configuration includes");

	if ((f = FUNC4(filename, "r")) == NULL)
		return 0;

	if (flags & SSHCONF_CHECKPERM) {
		struct stat sb;

		if (FUNC6(FUNC3(f), &sb) == -1)
			FUNC1("fstat %s: %s", filename, FUNC10(errno));
		if (((sb.st_uid != 0 && sb.st_uid != FUNC8()) ||
		    (sb.st_mode & 022) != 0))
			FUNC1("Bad owner or permissions on %s", filename);
	}

	FUNC0("Reading configuration data %.200s", filename);

	/*
	 * Mark that we are now processing the options.  This flag is turned
	 * on/off by Host specifications.
	 */
	linenum = 0;
	while (FUNC7(&line, &linesize, f) != -1) {
		/* Update line number counter. */
		linenum++;
		if (FUNC9(options, pw, host, original_host,
		    line, filename, linenum, activep, flags, depth) != 0)
			bad_options++;
	}
	FUNC5(line);
	FUNC2(f);
	if (bad_options > 0)
		FUNC1("%s: terminating, %d bad configuration options",
		    filename, bad_options);
	return 1;
}