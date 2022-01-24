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
struct hast_resource {scalar_t__ hr_workerpid; int /*<<< orphan*/ * hr_conn; int /*<<< orphan*/ * hr_event; int /*<<< orphan*/ * hr_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void
FUNC1(struct hast_resource *res)
{

	FUNC0(res->hr_ctrl);
	res->hr_ctrl = NULL;
	if (res->hr_event != NULL) {
		FUNC0(res->hr_event);
		res->hr_event = NULL;
	}
	if (res->hr_conn != NULL) {
		FUNC0(res->hr_conn);
		res->hr_conn = NULL;
	}
	res->hr_workerpid = 0;
}