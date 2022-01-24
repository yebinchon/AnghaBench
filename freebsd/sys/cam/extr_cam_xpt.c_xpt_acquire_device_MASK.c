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
struct cam_ed {int /*<<< orphan*/  refcount; TYPE_1__* target; } ;
struct cam_eb {int /*<<< orphan*/  eb_mtx; } ;
struct TYPE_2__ {struct cam_eb* bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct cam_ed *device)
{
	struct cam_eb *bus = device->target->bus;

	FUNC0(&bus->eb_mtx);
	device->refcount++;
	FUNC1(&bus->eb_mtx);
}