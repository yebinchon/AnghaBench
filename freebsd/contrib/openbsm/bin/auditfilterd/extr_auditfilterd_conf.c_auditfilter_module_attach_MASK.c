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
struct auditfilter_module {scalar_t__ (* am_attach ) (struct auditfilter_module*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * am_detach; int /*<<< orphan*/ * am_rawrecord; int /*<<< orphan*/ * am_record; int /*<<< orphan*/ * am_reinit; int /*<<< orphan*/ * am_cookie; int /*<<< orphan*/ * am_dlhandle; int /*<<< orphan*/  am_modulename; int /*<<< orphan*/  am_argv; int /*<<< orphan*/  am_argc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_FILTER_ATTACH_STRING ; 
 int /*<<< orphan*/  AUDIT_FILTER_DETACH_STRING ; 
 int /*<<< orphan*/  AUDIT_FILTER_RAWRECORD_STRING ; 
 int /*<<< orphan*/  AUDIT_FILTER_RECORD_STRING ; 
 int /*<<< orphan*/  AUDIT_FILTER_REINIT_STRING ; 
 scalar_t__ AUDIT_FILTER_SUCCESS ; 
 int /*<<< orphan*/  RTLD_NOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct auditfilter_module*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC6(struct auditfilter_module *am)
{

	am->am_dlhandle = FUNC2(am->am_modulename, RTLD_NOW);
	if (am->am_dlhandle == NULL) {
		FUNC5("auditfilter_module_attach: %s: %s", am->am_modulename,
		    FUNC1());
		return (-1);
	}

	/*
	 * Not implementing these is not considered a failure condition,
	 * although we might want to consider warning if obvious stuff is
	 * not implemented, such as am_record.
	 */
	am->am_attach = FUNC3(am->am_dlhandle, AUDIT_FILTER_ATTACH_STRING);
	am->am_reinit = FUNC3(am->am_dlhandle, AUDIT_FILTER_REINIT_STRING);
	am->am_record = FUNC3(am->am_dlhandle, AUDIT_FILTER_RECORD_STRING);
	am->am_rawrecord = FUNC3(am->am_dlhandle,
	    AUDIT_FILTER_RAWRECORD_STRING);
	am->am_detach = FUNC3(am->am_dlhandle, AUDIT_FILTER_DETACH_STRING);

	if (am->am_attach != NULL) {
		if (am->am_attach(am, am->am_argc, am->am_argv)
		    != AUDIT_FILTER_SUCCESS) {
			FUNC5("auditfilter_module_attach: %s: failed",
			    am->am_modulename);
			FUNC0(am->am_dlhandle);
			am->am_dlhandle = NULL;
			am->am_cookie = NULL;
			am->am_attach = NULL;
			am->am_reinit = NULL;
			am->am_record = NULL;
			am->am_rawrecord = NULL;
			am->am_detach = NULL;
			return (-1);
		}
	}

	return (0);
}