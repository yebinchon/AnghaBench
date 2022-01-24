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
struct ibv_cq {int dummy; } ;
struct c4iw_cq {int /*<<< orphan*/  lock; int /*<<< orphan*/  cq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arm ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 struct c4iw_cq* FUNC4 (struct ibv_cq*) ; 

int FUNC5(struct ibv_cq *ibcq, int solicited)
{
	struct c4iw_cq *chp;
	int ret;

	FUNC0(arm);
	chp = FUNC4(ibcq);
	FUNC1(&chp->lock);
	ret = FUNC3(&chp->cq, solicited);
	FUNC2(&chp->lock);
	return ret;
}