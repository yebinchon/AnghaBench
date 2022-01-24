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
struct cam_ed {int /*<<< orphan*/  device_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_CAMDEV ; 
 int /*<<< orphan*/  FUNC0 (struct cam_ed*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void *context, int pending)
{
	struct cam_ed	*device = context;

	FUNC2(&device->device_mtx);
	FUNC1(&device->device_mtx);
	FUNC0(device, M_CAMDEV);
}