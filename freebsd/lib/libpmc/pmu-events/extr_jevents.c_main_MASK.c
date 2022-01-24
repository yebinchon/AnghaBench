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
struct stat {int dummy; } ;

/* Variables and functions */
 int PATH_MAX ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ close_table ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  eventsfp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 char* mapfile ; 
 int FUNC8 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  preprocess_arch_std_files ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  process_one_file ; 
 int /*<<< orphan*/  prog ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,char const*,char const*) ; 
 scalar_t__ FUNC14 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbose ; 

int FUNC16(int argc, char *argv[])
{
	int rc;
	int maxfds;
	char ldirname[PATH_MAX];

	const char *arch;
	const char *output_file;
	const char *start_dirname;
	struct stat stbuf;

	prog = FUNC1(argv[0]);
	if (argc < 4) {
		FUNC9("Usage: %s <arch> <starting_dir> <output_file>\n", prog);
		return 1;
	}

	arch = argv[1];
	start_dirname = argv[2];
	output_file = argv[3];

	if (argc > 4)
		verbose = FUNC0(argv[4]);

	eventsfp = FUNC4(output_file, "w");
	if (!eventsfp) {
		FUNC9("%s Unable to create required file %s (%s)\n",
				prog, output_file, FUNC15(errno));
		return 2;
	}

	FUNC13(ldirname, "%s/%s", start_dirname, arch);

	/* If architecture does not have any event lists, bail out */
	if (FUNC14(ldirname, &stbuf) < 0) {
		FUNC10("%s: Arch %s has no PMU event lists\n", prog, arch);
		goto empty_map;
	}

	/* Include pmu-events.h first */
	FUNC5(eventsfp, "#include \"pmu-events/pmu-events.h\"\n");

	/*
	 * The mapfile allows multiple CPUids to point to the same JSON file,
	 * so, not sure if there is a need for symlinks within the pmu-events
	 * directory.
	 *
	 * For now, treat symlinks of JSON files as regular files and create
	 * separate tables for each symlink (presumably, each symlink refers
	 * to specific version of the CPU).
	 */

	maxfds = FUNC7();
	mapfile = NULL;
	rc = FUNC8(ldirname, preprocess_arch_std_files, maxfds, 0);
	if (rc && verbose) {
		FUNC10("%s: Error preprocessing arch standard files %s: %s\n",
			prog, ldirname, FUNC15(errno));
		goto empty_map;
	} else if (rc < 0) {
		/* Make build fail */
		FUNC6();
		return 1;
	} else if (rc) {
		goto empty_map;
	}

	rc = FUNC8(ldirname, process_one_file, maxfds, 0);
	if (rc && verbose) {
		FUNC10("%s: Error walking file tree %s\n", prog, ldirname);
		goto empty_map;
	} else if (rc < 0) {
		/* Make build fail */
		FUNC6();
		return 1;
	} else if (rc) {
		goto empty_map;
	}

	if (close_table)
		FUNC11(eventsfp);

	if (!mapfile) {
		FUNC10("%s: No CPU->JSON mapping?\n", prog);
		goto empty_map;
	}

	if (FUNC12(eventsfp, mapfile)) {
		FUNC10("%s: Error processing mapfile %s\n", prog, mapfile);
		/* Make build fail */
		return 1;
	}

	return 0;

empty_map:
	FUNC3(eventsfp);
	FUNC2(output_file);
	FUNC6();
	return 0;
}