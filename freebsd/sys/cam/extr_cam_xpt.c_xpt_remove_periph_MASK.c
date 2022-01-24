#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct cam_periph {TYPE_1__* path; } ;
struct cam_ed {TYPE_3__* target; int /*<<< orphan*/  periphs; int /*<<< orphan*/  generation; } ;
struct TYPE_8__ {int /*<<< orphan*/  xpt_generation; } ;
struct TYPE_7__ {TYPE_2__* bus; } ;
struct TYPE_6__ {int /*<<< orphan*/  eb_mtx; } ;
struct TYPE_5__ {struct cam_ed* device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cam_periph*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  cam_periph ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  periph_links ; 
 TYPE_4__ xsoftc ; 

void
FUNC4(struct cam_periph *periph)
{
	struct cam_ed *device;

	device = periph->path->device;
	if (device != NULL) {
		FUNC2(&device->target->bus->eb_mtx);
		device->generation++;
		FUNC0(&device->periphs, periph, cam_periph, periph_links);
		FUNC3(&device->target->bus->eb_mtx);
		FUNC1(&xsoftc.xpt_generation, 1);
	}
}