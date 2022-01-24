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
struct ccb_hdr {int dummy; } ;
struct cam_doneq {int /*<<< orphan*/  cam_doneq_mtx; int /*<<< orphan*/  cam_doneq; } ;
struct TYPE_2__ {int /*<<< orphan*/  stqe; } ;

/* Variables and functions */
 struct ccb_hdr* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct cam_doneq* cam_doneqs ; 
 int cam_num_doneqs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ sim_links ; 
 int /*<<< orphan*/  FUNC4 (struct ccb_hdr*) ; 

__attribute__((used)) static void
FUNC5(void)
{
	struct	ccb_hdr *ccb_h;
	struct cam_doneq *queue;
	int i;

	/* Process global queues. */
	for (i = 0; i < cam_num_doneqs; i++) {
		queue = &cam_doneqs[i];
		FUNC2(&queue->cam_doneq_mtx);
		while ((ccb_h = FUNC0(&queue->cam_doneq)) != NULL) {
			FUNC1(&queue->cam_doneq, sim_links.stqe);
			FUNC3(&queue->cam_doneq_mtx);
			FUNC4(ccb_h);
			FUNC2(&queue->cam_doneq_mtx);
		}
		FUNC3(&queue->cam_doneq_mtx);
	}
}