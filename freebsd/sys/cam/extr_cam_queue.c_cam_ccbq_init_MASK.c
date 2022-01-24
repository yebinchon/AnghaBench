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
struct cam_ccbq {int total_openings; int dev_openings; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cam_ccbq*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

int
FUNC4(struct cam_ccbq *ccbq, int openings)
{
	FUNC0(ccbq, sizeof(*ccbq));
	if (FUNC1(&ccbq->queue,
	    FUNC3(64, 1 << FUNC2(openings + openings / 2))) != 0)
		return (1);
	ccbq->total_openings = openings;
	ccbq->dev_openings = openings;
	return (0);
}