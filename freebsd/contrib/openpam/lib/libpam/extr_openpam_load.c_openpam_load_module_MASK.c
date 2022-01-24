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
typedef  int /*<<< orphan*/  pam_module_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAM_LOG_DEBUG ; 
 int /*<<< orphan*/  PAM_LOG_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char) ; 

pam_module_t *
FUNC4(const char *modulename)
{
	pam_module_t *module;

	module = FUNC0(modulename);
	FUNC1(PAM_LOG_DEBUG, "%s dynamic %s",
	    (module == NULL) ? "no" : "using", modulename);

#ifdef OPENPAM_STATIC_MODULES
	/* look for a static module */
	if (module == NULL && strchr(modulename, '/') == NULL) {
		module = openpam_static(modulename);
		openpam_log(PAM_LOG_DEBUG, "%s static %s",
		    (module == NULL) ? "no" : "using", modulename);
	}
#endif
	if (module == NULL) {
		FUNC1(PAM_LOG_ERROR, "no %s found", modulename);
		return (NULL);
	}
	return (module);
}