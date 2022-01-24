#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union ccb {int dummy; } ccb ;
typedef  scalar_t__ u_int32_t ;
struct TYPE_3__ {scalar_t__ priority; } ;
struct ccb_hdr {TYPE_1__ pinfo; } ;
struct cam_periph {scalar_t__ immediate_priority; int /*<<< orphan*/  ccb_list; int /*<<< orphan*/  path; } ;
struct TYPE_4__ {int /*<<< orphan*/  sle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  PRIBIO ; 
 struct ccb_hdr* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_periph*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_periph*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__ periph_links ; 
 int /*<<< orphan*/  FUNC5 (struct cam_periph*,int /*<<< orphan*/ ) ; 

union ccb *
FUNC6(struct cam_periph *periph, u_int32_t priority)
{
	struct ccb_hdr *ccb_h;

	FUNC0(periph->path, CAM_DEBUG_TRACE, ("cam_periph_getccb\n"));
	FUNC3(periph, MA_OWNED);
	while ((ccb_h = FUNC1(&periph->ccb_list)) == NULL ||
	    ccb_h->pinfo.priority != priority) {
		if (priority < periph->immediate_priority) {
			periph->immediate_priority = priority;
			FUNC5(periph, 0);
		} else
			FUNC4(periph, &periph->ccb_list, PRIBIO,
			    "cgticb", 0);
	}
	FUNC2(&periph->ccb_list, periph_links.sle);
	return ((union ccb *)ccb_h);
}