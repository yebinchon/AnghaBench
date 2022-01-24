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
 int ADE_PARSE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int FUNC8 () ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

int
FUNC11(void)
{
	int cnt, err;
	int ret = 0;

	/*
	 * Configure event to class mappings in kernel.
	 */
	cnt = FUNC3();
	if (cnt < 0) {
		FUNC1("auditd_set_evcmap() failed: %m");
		ret = -1;
	} else if (cnt == 0) {
		FUNC1("No events to class mappings registered.");
		ret = -1;
	} else
		FUNC0("Registered %d event to class mappings.", cnt);

	/*
	 * Configure non-attributable event mask in kernel.
	 */
	err = FUNC7();
	if (err) {
		FUNC1("auditd_set_namask() %s: %m",
		    FUNC10(err));
		ret = -1;
	} else
		FUNC0("Registered non-attributable event mask.");

	/*
	 * Configure audit policy in kernel.
	 */
	err = FUNC8();
	if (err) {
		FUNC1("auditd_set_policy() %s: %m",
		    FUNC10(err));
		ret = -1;
	} else
		FUNC0("Set audit policy in kernel.");

	/*
	 * Configure audit trail log size in kernel.
	 */
	err = FUNC4();
	if (err) {
		FUNC1("audit_set_fsize() %s: %m",
		    FUNC10(err));
		ret = -1;
	} else
		FUNC0("Set audit trail size in kernel.");

	/*
	 * Configure audit trail queue size in kernel.
	 */
	err = FUNC9();
	if (err) {
		FUNC1("audit_set_qsize() %s: %m",
		    FUNC10(err));
		ret = -1;
	} else
		FUNC0("Set audit trail queue in kernel.");

	/*
	 * Configure audit trail volume minimum free percentage of blocks in
	 * kernel.
	 */
	err = FUNC6();
	if (err) {
		FUNC1("auditd_set_minfree() %s: %m",
		    FUNC10(err));
		ret = -1;
	} else
		FUNC0(
		    "Set audit trail min free percent in kernel.");

	/*
	 * Configure host address in the audit kernel information.
	 */
	err = FUNC5();
	if (err) {
		if (err == ADE_PARSE) {
			FUNC2(
			    "audit_control(5) may be missing 'host:' field");
		} else {
			FUNC1("auditd_set_host() %s: %m",
			    FUNC10(err));
			ret = -1;
		}
	} else
		FUNC0(
		    "Set audit host address information in kernel.");

	return (ret);
}