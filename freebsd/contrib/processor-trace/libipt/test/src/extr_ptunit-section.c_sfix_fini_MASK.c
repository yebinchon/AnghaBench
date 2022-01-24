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
struct TYPE_2__ {int nthreads; int /*<<< orphan*/ * result; } ;
struct section_fixture {char* name; TYPE_1__ thrd; int /*<<< orphan*/ * file; int /*<<< orphan*/ * section; } ;
struct ptunit_result {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  ptunit_thrd_fini ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static struct ptunit_result FUNC7(struct section_fixture *sfix)
{
	char *filename;
	FILE *file;
	int thrd, errcode;

	FUNC5(ptunit_thrd_fini, &sfix->thrd);

	if (sfix->section) {
		FUNC2(sfix->section);
		sfix->section = NULL;
	}

	filename = sfix->name;
	file = sfix->file;
	sfix->name = NULL;
	sfix->file = NULL;

	/* Try removing the file while we still have it open to avoid races
	 * with others re-using the temporary filename.
	 *
	 * On some systems that may not be possible and we can choose between:
	 *
	 *   - guaranteed leaking files or
	 *   - running the risk of removing someone elses file
	 *
	 * We choose the latter.  Assuming those systems behave consistently,
	 * removing someone elses file should only succeed if it isn't open at
	 * the moment we try removing it.  Given that this is a temporary file,
	 * we should be able to rule out accidental name clashes with
	 * non-termporary files.
	 */
	if (filename && file) {
		errcode = FUNC6(filename);
		if (!errcode) {
			FUNC1(filename);
			filename = NULL;
		}
	}

	if (file)
		FUNC0(file);

	if (filename) {
		(void) FUNC6(filename);
		FUNC1(filename);
	}

	for (thrd = 0; thrd < sfix->thrd.nthreads; ++thrd)
		FUNC3(sfix->thrd.result[thrd], 0);

	return FUNC4();
}