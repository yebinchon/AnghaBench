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
struct TYPE_2__ {int /*<<< orphan*/  hostname; int /*<<< orphan*/  type; scalar_t__ timestamp; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char DIR_SEP ; 
 scalar_t__ EEXIST ; 
 int FALSE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int S_IXGRP ; 
 int S_IXOTH ; 
 int S_IXUSR ; 
 int TRUE ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__** kod_db ; 
 int kod_db_cnt ; 
 char* kod_db_file ; 
 int FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC6 (char*,char) ; 
 scalar_t__ FUNC7 (char*) ; 

int
FUNC8(void)
{
	FILE *db_s;
	char *pch;
	int dirmode;
	register int a;

	db_s = FUNC2(kod_db_file, "w");

	/*
	 * If opening fails, blindly attempt to create each directory
	 * in the path first, then retry the open.
	 */
	if (NULL == db_s && FUNC7(kod_db_file)) {
		dirmode = S_IRUSR | S_IWUSR | S_IXUSR
			| S_IRGRP | S_IXGRP
			| S_IROTH | S_IXOTH;
		pch = FUNC6(kod_db_file + 1, DIR_SEP);
		while (NULL != pch) {
			*pch = '\0';
			if (-1 == FUNC4(kod_db_file, dirmode)
			    && errno != EEXIST) {
				FUNC5(LOG_ERR, "mkdir(%s) failed: %m",
					kod_db_file);
				return FALSE;
			}
			*pch = DIR_SEP;
			pch = FUNC6(pch + 1, DIR_SEP);
		}
		db_s = FUNC2(kod_db_file, "w");
	}

	if (NULL == db_s) {
		FUNC5(LOG_WARNING, "Can't open KOD db file %s for writing: %m",
			kod_db_file);

		return FALSE;
	}

	for (a = 0; a < kod_db_cnt; a++) {
		FUNC3(db_s, "%16.16llx %s %s\n", (unsigned long long)
			kod_db[a]->timestamp, kod_db[a]->type,
			kod_db[a]->hostname);
	}

	FUNC1(db_s);
	FUNC0(db_s);

	return TRUE;
}