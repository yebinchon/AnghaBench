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
struct TYPE_4__ {scalar_t__ entries; scalar_t__ qfrozen_cnt; } ;
struct TYPE_3__ {scalar_t__ dev_openings; TYPE_2__ queue; } ;
struct cam_ed {TYPE_1__ ccbq; int /*<<< orphan*/  devq_entry; } ;
struct cam_devq {int /*<<< orphan*/  send_queue; int /*<<< orphan*/  send_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline int
FUNC3(struct cam_devq *devq, struct cam_ed *dev)
{
	int	retval;

	FUNC1(&devq->send_mtx, MA_OWNED);
	if ((dev->ccbq.queue.entries > 0) &&
	    (dev->ccbq.dev_openings > 0) &&
	    (dev->ccbq.queue.qfrozen_cnt == 0)) {
		/*
		 * The priority of a device waiting for controller
		 * resources is that of the highest priority CCB
		 * enqueued.
		 */
		retval =
		    FUNC2(&devq->send_queue,
				     &dev->devq_entry,
				     FUNC0(&dev->ccbq.queue));
	} else {
		retval = 0;
	}
	return (retval);
}