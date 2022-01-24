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
struct nbns_rq {scalar_t__ nr_fd; int /*<<< orphan*/  nr_rp; int /*<<< orphan*/  nr_rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct nbns_rq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct nbns_rq *rqp)
{
	if (rqp == NULL)
		return;
	if (rqp->nr_fd >= 0)
		FUNC0(rqp->nr_fd);
	FUNC2(&rqp->nr_rq);
	FUNC2(&rqp->nr_rp);
	FUNC1(rqp);
}