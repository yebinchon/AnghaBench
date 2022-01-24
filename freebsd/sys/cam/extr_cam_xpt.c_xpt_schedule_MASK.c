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
typedef  scalar_t__ u_int32_t ;
struct cam_periph {scalar_t__ scheduled_priority; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct cam_periph*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_periph*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct cam_periph *periph, u_int32_t new_priority)
{

	FUNC0(periph->path, CAM_DEBUG_TRACE, ("xpt_schedule\n"));
	FUNC1(periph, MA_OWNED);
	if (new_priority < periph->scheduled_priority) {
		periph->scheduled_priority = new_priority;
		FUNC2(periph, 0);
	}
}