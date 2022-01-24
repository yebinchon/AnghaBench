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
struct cam_devq {int /*<<< orphan*/  send_mtx; int /*<<< orphan*/  send_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_CAMDEVQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_devq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct cam_devq *devq)
{

	FUNC0(&devq->send_queue);
	FUNC2(&devq->send_mtx);
	FUNC1(devq, M_CAMDEVQ);
}