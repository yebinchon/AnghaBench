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
struct stat {int /*<<< orphan*/  st_size; } ;
struct perf_entry_data {int /*<<< orphan*/  topic; int /*<<< orphan*/  outfp; } ;
struct FTW {int level; int base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FTW_D ; 
 int FTW_F ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ close_table ; 
 int /*<<< orphan*/  eventsfp ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ,struct perf_entry_data*) ; 
 int /*<<< orphan*/  mapfile ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  print_events_table_entry ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prog ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 

__attribute__((used)) static int FUNC13(const char *fpath, const struct stat *sb,
			    int typeflag, struct FTW *ftwbuf)
{
	char *tblname;
	const char *bname;
	int is_dir  = typeflag == FTW_D;
	int is_file = typeflag == FTW_F;
	int level   = ftwbuf->level;
	int err = 0;

	if (level == 2 && is_dir) {
		/*
		 * For level 2 directory, bname will include parent name,
		 * like vendor/platform. So search back from platform dir
		 * to find this.
		 */
		bname = fpath + ftwbuf->base - 2;
		for (;;) {
			if (*bname == '/')
				break;
			bname--;
		}
		bname++;
	} else
		bname = fpath + ftwbuf->base;

	FUNC7("%s %d %7jd %-20s %s\n",
		 is_file ? "f" : is_dir ? "d" : "x",
		 level, sb->st_size, bname, fpath);

	/* base dir or too deep */
	if (level == 0 || level > 3)
		return 0;


	/* model directory, reset topic */
	if ((level == 1 && is_dir && FUNC5(fpath)) ||
	    (level == 2 && is_dir)) {
		if (close_table)
			FUNC10(eventsfp);

		/*
		 * Drop file name suffix. Replace hyphens with underscores.
		 * Fail if file name contains any alphanum characters besides
		 * underscores.
		 */
		tblname = FUNC1(bname);
		if (!tblname) {
			FUNC8("%s: Error determining table name for %s\n", prog,
				bname);
			return -1;
		}

		FUNC9(eventsfp, tblname);
		return 0;
	}

	/*
	 * Save the mapfile name for now. We will process mapfile
	 * after processing all JSON files (so we can write out the
	 * mapping table after all PMU events tables).
	 *
	 */
	if (level == 1 && is_file) {
		if (!FUNC11(bname, "mapfile.csv")) {
			mapfile = FUNC12(fpath);
			return 0;
		}

		FUNC8("%s: Ignoring file %s\n", prog, fpath);
		return 0;
	}

	/*
	 * If the file name does not have a .json extension,
	 * ignore it. It could be a readme.txt for instance.
	 */
	if (is_file) {
		if (!FUNC4(bname)) {
			FUNC8("%s: Ignoring file without .json suffix %s\n", prog,
				fpath);
			return 0;
		}
	}

	if (level > 1 && FUNC0(bname))
		return -ENOMEM;

	/*
	 * Assume all other files are JSON files.
	 *
	 * If mapfile refers to 'power7_core.json', we create a table
	 * named 'power7_core'. Any inconsistencies between the mapfile
	 * and directory tree could result in build failure due to table
	 * names not being found.
	 *
	 * Atleast for now, be strict with processing JSON file names.
	 * i.e. if JSON file name cannot be mapped to C-style table name,
	 * fail.
	 */
	if (is_file) {
		struct perf_entry_data data = {
			.topic = FUNC3(),
			.outfp = eventsfp,
		};

		err = FUNC6(fpath, print_events_table_entry, &data);

		FUNC2(data.topic);
	}

	return err;
}