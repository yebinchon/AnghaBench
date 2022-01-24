#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cam_et {int /*<<< orphan*/  ed_entries; TYPE_1__* bus; } ;
struct cam_ed {scalar_t__ lun_id; int /*<<< orphan*/  refcount; } ;
typedef  scalar_t__ lun_id_t ;
struct TYPE_2__ {int /*<<< orphan*/  eb_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 struct cam_ed* FUNC0 (int /*<<< orphan*/ *) ; 
 struct cam_ed* FUNC1 (struct cam_ed*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cam_ed *
FUNC3(struct cam_et *target, lun_id_t lun_id)
{
	struct cam_ed *device;

	FUNC2(&target->bus->eb_mtx, MA_OWNED);
	for (device = FUNC0(&target->ed_entries);
	     device != NULL;
	     device = FUNC1(device, links)) {
		if (device->lun_id == lun_id) {
			device->refcount++;
			break;
		}
	}
	return (device);
}