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
 int AUC_DISABLED ; 
 int /*<<< orphan*/  AUD_STATE_DISABLED ; 
 int /*<<< orphan*/  AUE_audit_shutdown ; 
 int /*<<< orphan*/  TIMESTAMP_LEN ; 
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * lastfile ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(void)
{
	int err_ret = 0;
	char TS[TIMESTAMP_LEN + 1];
	int err;
	int cond;
	time_t tt;

	err = FUNC2(AUE_audit_shutdown, NULL);
	if (err)
		FUNC3("auditd_gen_record(AUE_audit_shutdown) %s: %m",
		    FUNC6(err));

	/* Flush contents. */
	cond = AUC_DISABLED;
	err_ret = FUNC0(&cond);
	if (err_ret != 0) {
		FUNC3("Disabling audit failed! : %s", FUNC11(errno));
		err_ret = 1;
	}

	/*
	 * Updated the cached state that auditing has been disabled.
	 */
	FUNC5(AUD_STATE_DISABLED);

	if (FUNC10(tt, TS, sizeof(TS)) == 0)
		FUNC7(TS);
	if (lastfile != NULL)
		FUNC9(lastfile);

	err_ret += FUNC8();

	if (err_ret) {
		FUNC3("Could not unregister");
		FUNC1();
	}

	FUNC4("Finished");
	return (err_ret);
}