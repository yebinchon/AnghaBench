#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* path; int /*<<< orphan*/ * dlh; } ;
typedef  TYPE_1__ pam_module_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  PAM_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(pam_module_t *module)
{

	if (module == NULL)
		return;
	if (module->dlh == NULL)
		/* static module */
		return;
	FUNC1(module->dlh);
	FUNC2(PAM_LOG_DEBUG, "releasing %s", module->path);
	FUNC0(module->path);
	FUNC0(module);
}