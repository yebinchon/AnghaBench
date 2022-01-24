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
struct cam_periph {TYPE_3__* path; int /*<<< orphan*/  periph_run_task; } ;
struct cam_ed {TYPE_2__* target; int /*<<< orphan*/  periphs; int /*<<< orphan*/  generation; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_8__ {int /*<<< orphan*/  xpt_generation; } ;
struct TYPE_7__ {struct cam_ed* device; } ;
struct TYPE_6__ {TYPE_1__* bus; } ;
struct TYPE_5__ {int /*<<< orphan*/  eb_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_REQ_CMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cam_periph*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  periph_links ; 
 int /*<<< orphan*/  xpt_run_allocq_task ; 
 TYPE_4__ xsoftc ; 

int32_t
FUNC5(struct cam_periph *periph)
{
	struct cam_ed *device;
	int32_t	 status;

	FUNC1(&periph->periph_run_task, 0, xpt_run_allocq_task, periph);
	device = periph->path->device;
	status = CAM_REQ_CMP;
	if (device != NULL) {
		FUNC3(&device->target->bus->eb_mtx);
		device->generation++;
		FUNC0(&device->periphs, periph, periph_links);
		FUNC4(&device->target->bus->eb_mtx);
		FUNC2(&xsoftc.xpt_generation, 1);
	}

	return (status);
}