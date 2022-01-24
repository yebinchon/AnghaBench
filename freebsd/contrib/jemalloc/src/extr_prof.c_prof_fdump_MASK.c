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
 int /*<<< orphan*/  VSEQ_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_prof ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int opt_prof_final ; 
 int /*<<< orphan*/  opt_prof_leak ; 
 char* opt_prof_prefix ; 
 int /*<<< orphan*/  prof_booted ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prof_dump_seq_mtx ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(void) {
	tsd_t *tsd;
	char filename[DUMP_FILENAME_BUFSIZE];

	FUNC1(config_prof);
	FUNC0(opt_prof_final);
	FUNC0(opt_prof_prefix[0] != '\0');

	if (!prof_booted) {
		return;
	}
	tsd = FUNC6();
	FUNC0(FUNC7(tsd) == 0);

	FUNC2(FUNC8(tsd), &prof_dump_seq_mtx);
	FUNC5(filename, 'f', VSEQ_INVALID);
	FUNC3(FUNC8(tsd), &prof_dump_seq_mtx);
	FUNC4(tsd, false, filename, opt_prof_leak);
}