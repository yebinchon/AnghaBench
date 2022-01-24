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
struct rsocket {int cq_armed; int /*<<< orphan*/  cq_lock; int /*<<< orphan*/  cq_wait_lock; TYPE_1__* cm_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  recv_cq; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rsocket*) ; 
 int FUNC5 (struct rsocket*) ; 
 int /*<<< orphan*/  FUNC6 (struct rsocket*) ; 

__attribute__((used)) static int FUNC7(struct rsocket *rs, int nonblock, int (*test)(struct rsocket *rs))
{
	int ret;

	FUNC1(&rs->cq_lock);
	do {
		FUNC6(rs);
		ret = FUNC5(rs);
		if (test(rs)) {
			ret = 0;
			break;
		} else if (ret) {
			break;
		} else if (nonblock) {
			ret = FUNC0(EWOULDBLOCK);
		} else if (!rs->cq_armed) {
			FUNC3(rs->cm_id->recv_cq, 0);
			rs->cq_armed = 1;
		} else {
			FUNC6(rs);
			FUNC1(&rs->cq_wait_lock);
			FUNC2(&rs->cq_lock);

			ret = FUNC4(rs);
			FUNC2(&rs->cq_wait_lock);
			FUNC1(&rs->cq_lock);
		}
	} while (!ret);

	FUNC6(rs);
	FUNC2(&rs->cq_lock);
	return ret;
}