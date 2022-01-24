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
struct rsocket {int cq_armed; int /*<<< orphan*/  cq_lock; int /*<<< orphan*/  cq_wait_lock; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EWOULDBLOCK ; 
 int FUNC1 (struct rsocket*) ; 
 int /*<<< orphan*/  FUNC2 (struct rsocket*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsocket*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct rsocket *rs, int nonblock, int (*test)(struct rsocket *rs))
{
	int ret = 0;

	FUNC4(&rs->cq_lock);
	do {
		FUNC2(rs);
		if (test(rs)) {
			ret = 0;
			break;
		} else if (nonblock) {
			ret = FUNC0(EWOULDBLOCK);
		} else if (!rs->cq_armed) {
			FUNC3(rs);
			rs->cq_armed = 1;
		} else {
			FUNC4(&rs->cq_wait_lock);
			FUNC5(&rs->cq_lock);

			ret = FUNC1(rs);
			FUNC5(&rs->cq_wait_lock);
			FUNC4(&rs->cq_lock);
		}
	} while (!ret);

	FUNC5(&rs->cq_lock);
	return ret;
}