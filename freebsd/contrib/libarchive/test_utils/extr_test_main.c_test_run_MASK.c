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
typedef  int /*<<< orphan*/  workdir ;
struct TYPE_2__ {char* name; int failures; int /*<<< orphan*/  (* func ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  LC_ALL ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  VERBOSITY_PASSFAIL 129 
#define  VERBOSITY_SUMMARY_ONLY 128 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int failures ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  keep_temp_files ; 
 int /*<<< orphan*/ * logfile ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int skips ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char*) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 TYPE_1__* tests ; 
 char* testworkdir ; 
 int FUNC15 (int) ; 
 int verbosity ; 

__attribute__((used)) static int
FUNC16(int i, const char *tmpdir)
{
#ifdef PATH_MAX
	char workdir[PATH_MAX];
#else
	char workdir[1024];
#endif
	char logfilename[64];
	int failures_before = failures;
	int skips_before = skips;
	int oldumask;

	switch (verbosity) {
	case VERBOSITY_SUMMARY_ONLY: /* No per-test reports at all */
		break;
	case VERBOSITY_PASSFAIL: /* rest of line will include ok/FAIL marker */
		FUNC8("%3d: %-64s", i, tests[i].name);
		FUNC5(stdout);
		break;
	default: /* Title of test, details will follow */
		FUNC8("%3d: %s\n", i, tests[i].name);
	}

	/* Chdir to the top-level work directory. */
	if (!FUNC1(tmpdir)) {
		FUNC7(stderr,
		    "ERROR: Can't chdir to top work dir %s\n", tmpdir);
		FUNC3(1);
	}
	/* Create a log file for this test. */
	FUNC11(logfilename, "%s.log", tests[i].name);
	logfile = FUNC6(logfilename, "w");
	FUNC7(logfile, "%s\n\n", tests[i].name);
	/* Chdir() to a work dir for this specific test. */
	FUNC10(workdir, sizeof(workdir), "%s/%s", tmpdir, tests[i].name);
	testworkdir = workdir;
	if (!FUNC2(testworkdir, 0755)
	    || !FUNC1(testworkdir)) {
		FUNC7(stderr,
		    "ERROR: Can't chdir to work dir %s\n", testworkdir);
		FUNC3(1);
	}
	/* Explicitly reset the locale before each test. */
	FUNC9(LC_ALL, "C");
	/* Record the umask before we run the test. */
	FUNC15(oldumask = FUNC15(0));
	/*
	 * Run the actual test.
	 */
	(*tests[i].func)();
	/*
	 * Clean up and report afterwards.
	 */
	testworkdir = NULL;
	/* Restore umask */
	FUNC15(oldumask);
	/* Reset locale. */
	FUNC9(LC_ALL, "C");
	/* Reset directory. */
	if (!FUNC1(tmpdir)) {
		FUNC7(stderr, "ERROR: Couldn't chdir to temp dir %s\n",
		    tmpdir);
		FUNC3(1);
	}
	/* Report per-test summaries. */
	tests[i].failures = failures - failures_before;
	FUNC14(tests[i].failures, skips - skips_before);
	/* Close the per-test log file. */
	FUNC4(logfile);
	logfile = NULL;
	/* If there were no failures, we can remove the work dir and logfile. */
	if (tests[i].failures == 0) {
		if (!keep_temp_files && FUNC1(tmpdir)) {
#if defined(_WIN32) && !defined(__CYGWIN__)
			/* Make sure not to leave empty directories.
			 * Sometimes a processing of closing files used by tests
			 * is not done, then rmdir will be failed and it will
			 * leave a empty test directory. So we should wait a few
			 * seconds and retry rmdir. */
			int r, t;
			for (t = 0; t < 10; t++) {
				if (t > 0)
					Sleep(1000);
				r = systemf("rmdir /S /Q %s", tests[i].name);
				if (r == 0)
					break;
			}
			systemf("del %s", logfilename);
#else
			FUNC13("rm -rf %s", tests[i].name);
			FUNC13("rm %s", logfilename);
#endif
		}
	}
	/* Return appropriate status. */
	return (tests[i].failures);
}