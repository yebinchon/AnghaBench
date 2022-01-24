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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  TS ;

/* Variables and functions */
 int ADE_ACTL ; 
 int ADE_NOERR ; 
 int ADE_SOFTLIM ; 
 int /*<<< orphan*/  AUE_audit_startup ; 
 int /*<<< orphan*/  TIMESTAMP_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (char*,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 

int
FUNC15(void)
{
	int err;
	char *newfile = NULL;
	time_t tt;
	char TS[TIMESTAMP_LEN + 1];
	int ret = 0;

	/*
	 * Mask auditing of this process.
	 */
	if (FUNC2() != 0)
		return (-1);

	/*
	 * Read audit_control and get log directories.
	 */
	err = FUNC3(NULL, NULL);
	if (err != ADE_NOERR && err != ADE_SOFTLIM)
		return (-1);

	/*
	 * Setup trail file distribution.
	 */
	(void) FUNC4();

	/*
	 *  Create a new audit trail log.
	 */
	if (FUNC13(tt, TS, sizeof(TS)) != 0)
		return (-1);
	err = FUNC11(TS, &newfile, FUNC14(), NULL);
	if (err != ADE_NOERR && err != ADE_ACTL) {
		ret = -1;
		goto out;
	}

	/*
	 * Add the current symlink and recover from crash, if needed.
	 */
	if (FUNC1(newfile) != 0) {
		ret = -1;
		goto out;
	}

	/*
	 * At this point auditing has started so generate audit start-up record.
	 */
	if (FUNC0(AUE_audit_startup, NULL) != 0) {
		ret = -1;
		goto out;
	}

	/*
	 *  Configure the audit controls.
	 */
	(void) FUNC5();
	(void) FUNC9();
	(void) FUNC10();
	(void) FUNC6();
	(void) FUNC8();
	(void) FUNC7();

out:
	if (newfile != NULL)
		FUNC12(newfile);

	return (ret);
}