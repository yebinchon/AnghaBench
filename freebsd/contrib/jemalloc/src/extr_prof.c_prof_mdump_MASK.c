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
typedef  int /*<<< orphan*/  tsd_t ;

/* Variables and functions */
 int DUMP_FILENAME_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_prof ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  opt_prof ; 
 char* opt_prof_prefix ; 
 int /*<<< orphan*/  prof_booted ; 
 int FUNC4 (int /*<<< orphan*/ *,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prof_dump_mseq ; 
 int /*<<< orphan*/  prof_dump_seq_mtx ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

bool
FUNC8(tsd_t *tsd, const char *filename) {
	FUNC1(config_prof);
	FUNC0(FUNC6(tsd) == 0);

	if (!opt_prof || !prof_booted) {
		return true;
	}
	char filename_buf[DUMP_FILENAME_BUFSIZE];
	if (filename == NULL) {
		/* No filename specified, so automatically generate one. */
		if (opt_prof_prefix[0] == '\0') {
			return true;
		}
		FUNC2(FUNC7(tsd), &prof_dump_seq_mtx);
		FUNC5(filename_buf, 'm', prof_dump_mseq);
		prof_dump_mseq++;
		FUNC3(FUNC7(tsd), &prof_dump_seq_mtx);
		filename = filename_buf;
	}
	return FUNC4(tsd, true, filename, false);
}