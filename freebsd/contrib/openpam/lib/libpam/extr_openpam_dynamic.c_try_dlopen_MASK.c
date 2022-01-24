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
 int /*<<< orphan*/  OPENPAM_VERIFY_MODULE_FILE ; 
 int /*<<< orphan*/  PAM_LOG_ERROR ; 
 int /*<<< orphan*/  PAM_LOG_LIBDEBUG ; 
 int /*<<< orphan*/  RTLD_NOW ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,...) ; 

__attribute__((used)) static void *
FUNC5(const char *modfn)
{
	int check_module_file;
	void *dlh;

	FUNC4(PAM_LOG_LIBDEBUG, "dlopen(%s)", modfn);
	FUNC3(OPENPAM_VERIFY_MODULE_FILE,
	    &check_module_file);
	if (check_module_file &&
	    FUNC2(modfn) != 0)
		return (NULL);
	if ((dlh = FUNC1(modfn, RTLD_NOW)) == NULL) {
		FUNC4(PAM_LOG_ERROR, "%s: %s", modfn, FUNC0());
		errno = 0;
		return (NULL);
	}
	return (dlh);
}