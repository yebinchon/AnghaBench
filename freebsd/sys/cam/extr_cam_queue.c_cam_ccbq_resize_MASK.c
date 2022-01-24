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
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_2__ {int array_size; } ;
struct cam_ccbq {int dev_active; int dev_openings; int total_openings; TYPE_1__ queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_REQ_CMP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int) ; 

u_int32_t
FUNC3(struct cam_ccbq *ccbq, int new_size)
{
	int delta;

	delta = new_size - (ccbq->dev_active + ccbq->dev_openings);
	ccbq->total_openings += delta;
	ccbq->dev_openings += delta;

	new_size = FUNC2(64, 1 << FUNC1(new_size + new_size / 2));
	if (new_size > ccbq->queue.array_size)
		return (FUNC0(&ccbq->queue, new_size));
	else
		return (CAM_REQ_CMP);
}