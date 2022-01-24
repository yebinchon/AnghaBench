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
struct ibv_wc {int dummy; } ;
struct ibv_cq {int dummy; } ;
struct c4iw_cq {int /*<<< orphan*/  lock; int /*<<< orphan*/  cq; int /*<<< orphan*/  rhp; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENODATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct c4iw_cq*,struct ibv_wc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct c4iw_cq* FUNC7 (struct ibv_cq*) ; 

int FUNC8(struct ibv_cq *ibcq, int num_entries, struct ibv_wc *wc)
{
	struct c4iw_cq *chp;
	int npolled;
	int err = 0;

	chp = FUNC7(ibcq);

	if (FUNC4(&chp->cq)) {
		FUNC6(&chp->cq);
		FUNC0(chp->rhp);
	}

	if (!num_entries)
		return FUNC5(&chp->cq);

	FUNC2(&chp->lock);
	for (npolled = 0; npolled < num_entries; ++npolled) {
		do {
			err = FUNC1(chp, wc + npolled);
		} while (err == -EAGAIN);
		if (err)
			break;
	}
	FUNC3(&chp->lock);
	return !err || err == -ENODATA ? npolled : err;
}