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
 int /*<<< orphan*/  OPENPAM_FALLBACK_TO_OTHER ; 
 int /*<<< orphan*/  OPENPAM_RESTRICT_MODULE_NAME ; 
 int /*<<< orphan*/  OPENPAM_RESTRICT_SERVICE_NAME ; 
 int /*<<< orphan*/  OPENPAM_VERIFY_MODULE_FILE ; 
 int /*<<< orphan*/  OPENPAM_VERIFY_POLICY_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  empty_policy ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  mod_return ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * pam_return_so ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(int argc, char *argv[])
{

	(void)argc;
	(void)argv;

	if ((pam_return_so = FUNC1("PAM_RETURN_SO")) == NULL) {
		FUNC3("define PAM_RETURN_SO before running these tests\n");
		return (0);
	}

	FUNC2(OPENPAM_RESTRICT_MODULE_NAME, 0);
	FUNC2(OPENPAM_VERIFY_MODULE_FILE, 0);
	FUNC2(OPENPAM_RESTRICT_SERVICE_NAME, 0);
	FUNC2(OPENPAM_VERIFY_POLICY_FILE, 0);
	FUNC2(OPENPAM_FALLBACK_TO_OTHER, 0);

	FUNC0(empty_policy);
	FUNC0(mod_return);

	return (0);
}