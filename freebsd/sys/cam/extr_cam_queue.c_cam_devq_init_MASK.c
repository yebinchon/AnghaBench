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
struct cam_devq {int send_openings; scalar_t__ send_active; int /*<<< orphan*/  send_queue; int /*<<< orphan*/  send_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (struct cam_devq*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC3(struct cam_devq *devq, int devices, int openings)
{

	FUNC0(devq, sizeof(*devq));
	FUNC2(&devq->send_mtx, "CAM queue lock", NULL, MTX_DEF);
	if (FUNC1(&devq->send_queue, devices) != 0)
		return (1);
	devq->send_openings = openings;
	devq->send_active = 0;
	return (0);
}