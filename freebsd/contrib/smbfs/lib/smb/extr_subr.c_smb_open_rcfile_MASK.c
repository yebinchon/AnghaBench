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
 int ENOENT ; 
 int /*<<< orphan*/  SMB_CFG_FILE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC5 (char*,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * smb_rc ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 
 scalar_t__ FUNC7 (char*) ; 

int
FUNC8(void)
{
	char *home, *fn;
	int error;

	home = FUNC1("HOME");
	if (home) {
		fn = FUNC2(FUNC7(home) + 20);
		FUNC6(fn, "%s/.nsmbrc", home);
		error = FUNC5(fn, "r", &smb_rc);
		FUNC0(fn);
	}
	error = FUNC4(SMB_CFG_FILE, &smb_rc);
	if (smb_rc == NULL) {
		FUNC3("Warning: no cfg file(s) found.\n");
		return ENOENT;
	}
	return 0;
}