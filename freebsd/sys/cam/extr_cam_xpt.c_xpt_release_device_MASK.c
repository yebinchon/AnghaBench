#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ index; } ;
struct cam_ed {scalar_t__ refcount; int flags; int /*<<< orphan*/  device_destroy_task; int /*<<< orphan*/  nvme_cdata; int /*<<< orphan*/  nvme_data; int /*<<< orphan*/  serial_num; int /*<<< orphan*/  rcap_buf; int /*<<< orphan*/  physpath; int /*<<< orphan*/  ext_inq; int /*<<< orphan*/  device_id; int /*<<< orphan*/  supported_vpds; int /*<<< orphan*/  ccbq; TYPE_5__* target; int /*<<< orphan*/  callout; TYPE_3__ devq_entry; int /*<<< orphan*/  periphs; } ;
struct cam_eb {TYPE_1__* sim; int /*<<< orphan*/  eb_mtx; } ;
struct TYPE_7__ {scalar_t__ array_size; } ;
struct cam_devq {int /*<<< orphan*/  send_mtx; TYPE_2__ send_queue; } ;
struct TYPE_10__ {int /*<<< orphan*/  generation; int /*<<< orphan*/  ed_entries; struct cam_eb* bus; } ;
struct TYPE_9__ {int /*<<< orphan*/  xpt_taskq; } ;
struct TYPE_6__ {struct cam_devq* devq; } ;

/* Variables and functions */
 int CAM_DEV_REL_TIMEOUT_PENDING ; 
 scalar_t__ CAM_UNQUEUED_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_CAMXPT ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cam_ed*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_devq*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 TYPE_4__ xsoftc ; 

void
FUNC11(struct cam_ed *device)
{
	struct cam_eb *bus = device->target->bus;
	struct cam_devq *devq;

	FUNC7(&bus->eb_mtx);
	if (--device->refcount > 0) {
		FUNC8(&bus->eb_mtx);
		return;
	}

	FUNC2(&device->target->ed_entries, device,links);
	device->target->generation++;
	FUNC8(&bus->eb_mtx);

	/* Release our slot in the devq */
	devq = bus->sim->devq;
	FUNC7(&devq->send_mtx);
	FUNC5(devq, devq->send_queue.array_size - 1);
	FUNC8(&devq->send_mtx);

	FUNC0(FUNC1(&device->periphs),
	    ("destroying device, but periphs list is not empty"));
	FUNC0(device->devq_entry.index == CAM_UNQUEUED_INDEX,
	    ("destroying device while still queued for ccbs"));

	if ((device->flags & CAM_DEV_REL_TIMEOUT_PENDING) != 0)
		FUNC3(&device->callout);

	FUNC10(device->target);

	FUNC4(&device->ccbq);
	/*
	 * Free allocated memory.  free(9) does nothing if the
	 * supplied pointer is NULL, so it is safe to call without
	 * checking.
	 */
	FUNC6(device->supported_vpds, M_CAMXPT);
	FUNC6(device->device_id, M_CAMXPT);
	FUNC6(device->ext_inq, M_CAMXPT);
	FUNC6(device->physpath, M_CAMXPT);
	FUNC6(device->rcap_buf, M_CAMXPT);
	FUNC6(device->serial_num, M_CAMXPT);
	FUNC6(device->nvme_data, M_CAMXPT);
	FUNC6(device->nvme_cdata, M_CAMXPT);
	FUNC9(xsoftc.xpt_taskq, &device->device_destroy_task);
}