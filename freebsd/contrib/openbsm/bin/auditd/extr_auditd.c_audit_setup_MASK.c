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

/* Variables and functions */
 int /*<<< orphan*/  AUE_audit_startup ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void
FUNC9(void)
{
	int err;

	/* Configure trail files distribution. */
	err = FUNC5();
	if (err) {
		FUNC3("auditd_set_dist() %s: %m",
		    FUNC6(err));
	} else
		FUNC2("Configured trail files distribution.");

	if (FUNC7() == -1) {
		FUNC3("Error creating audit trail file");
		FUNC8();
	}

	/* Generate an audit record. */
	err = FUNC1(AUE_audit_startup, NULL);
	if (err)
		FUNC3("auditd_gen_record(AUE_audit_startup) %s: %m",
		    FUNC6(err));

	if (FUNC0() == 0)
		FUNC4("Audit controls init successful");
	else
		FUNC3("Audit controls init failed");
}