#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* module_data; } ;
typedef  TYPE_1__ pam_handle_t ;
struct TYPE_10__ {void (* cleanup ) (TYPE_1__*,void*,int) ;void* data; struct TYPE_10__* next; int /*<<< orphan*/ * name; } ;
typedef  TYPE_3__ pam_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int PAM_BUF_ERR ; 
 int PAM_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_3__* FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 void FUNC6 (TYPE_1__*,void*,int) ; 

int
FUNC7(pam_handle_t *pamh,
	const char *module_data_name,
	void *data,
	void (*cleanup)(pam_handle_t *pamh,
		void *data,
		int pam_end_status))
{
	pam_data_t *dp;

	FUNC0(module_data_name);
	for (dp = pamh->module_data; dp != NULL; dp = dp->next) {
		if (FUNC4(dp->name, module_data_name) == 0) {
			if (dp->cleanup)
				(dp->cleanup)(pamh, dp->data, PAM_SUCCESS);
			dp->data = data;
			dp->cleanup = cleanup;
			FUNC2(PAM_SUCCESS);
		}
	}
	if ((dp = FUNC3(sizeof *dp)) == NULL)
		FUNC2(PAM_BUF_ERR);
	if ((dp->name = FUNC5(module_data_name)) == NULL) {
		FUNC1(dp);
		FUNC2(PAM_BUF_ERR);
	}
	dp->data = data;
	dp->cleanup = cleanup;
	dp->next = pamh->module_data;
	pamh->module_data = dp;
	FUNC2(PAM_SUCCESS);
}