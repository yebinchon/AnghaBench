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
typedef  int /*<<< orphan*/  FTSENT ;
typedef  int /*<<< orphan*/  FTS ;

/* Variables and functions */
 int FTS_NOCHDIR ; 
 int FTS_PHYSICAL ; 
 int /*<<< orphan*/  FTS_SKIP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fts_compare ; 
 int /*<<< orphan*/ * FUNC1 (char* const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int
FUNC5(void)
{
	const char	*argv[2];
	FTS		*ftsp;
	FTSENT		*entry;

	argv[0] = ".";
	argv[1] = (char *)NULL;

	ftsp = FUNC1((char * const *)argv,
	    FTS_PHYSICAL | FTS_NOCHDIR, fts_compare);

	if (ftsp == NULL) {
		FUNC4("fts_open");
		return 1;
	}

	entry = FUNC2(ftsp);

	if (entry == NULL) {
		FUNC4("fts_read");
		return 1;
	}

	if (FUNC3(ftsp, entry, FTS_SKIP) != 0) {
		FUNC4("fts_set");
		return 1;
	}

	if (FUNC0(ftsp) != 0) {
		FUNC4("fts_close");
		return 1;
	}

	return 0;
}