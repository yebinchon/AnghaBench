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
typedef  int /*<<< orphan*/  ldvar ;
typedef  enum ubenv_action { ____Placeholder_ubenv_action } ubenv_action ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int UBENV_IMPORT ; 
 int UBENV_SHOW ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 scalar_t__ FUNC6 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 
 char* FUNC8 (char const*) ; 

__attribute__((used)) static void
FUNC9(enum ubenv_action action, const char * var)
{
	char ldvar[128];
	const char *val;
	char *wrk;
	int len;

	/*
	 * On an import with the variable name formatted as ldname=ubname,
	 * import the uboot variable ubname into the loader variable ldname,
	 * otherwise the historical behavior is to import to uboot.ubname.
	 */
	if (action == UBENV_IMPORT) { 
		len = FUNC4(var, "=");
		if (len == 0) {
			FUNC1("name cannot start with '=': '%s'\n", var);
			return;
		}
		if (var[len] == 0) {
			FUNC3(ldvar, "uboot.");
			FUNC5(ldvar, var, sizeof(ldvar) - 7);
		} else {
			len = FUNC0(len, sizeof(ldvar) - 1);
			FUNC7(ldvar, var, len);
			ldvar[len] = 0;
			var = &var[len + 1];
		}
	}

	/*
	 * If the user prepended "uboot." (which is how they usually see these
	 * names) strip it off as a convenience.
	 */
	if (FUNC6(var, "uboot.", 6) == 0) {
		var = &var[6];
	}

	/* If there is no variable name left, punt. */
	if (var[0] == 0) {
		FUNC1("empty variable name\n");
		return;
	}

	val = FUNC8(var);
	if (action == UBENV_SHOW) {
		if (val == NULL)
			FUNC1("uboot.%s is not set\n", var);
		else
			FUNC1("uboot.%s=%s\n", var, val);
	} else if (action == UBENV_IMPORT) {
		if (val != NULL) {
			FUNC2(ldvar, val, 1);
		}
	}
}