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
struct rsocket {int state; int /*<<< orphan*/  cq_lock; int /*<<< orphan*/  ctrl_seqno; } ;

/* Variables and functions */
 int /*<<< orphan*/  RS_CTRL_KEEPALIVE ; 
 int /*<<< orphan*/  RS_OP_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int rs_connected ; 
 scalar_t__ FUNC2 (struct rsocket*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rsocket*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,uintptr_t,uintptr_t) ; 

__attribute__((used)) static void FUNC5(struct rsocket *rs)
{
	FUNC0(&rs->cq_lock);
	if (FUNC2(rs) && (rs->state & rs_connected)) {
		rs->ctrl_seqno++;
		FUNC4(rs, NULL, 0, FUNC3(RS_OP_CTRL, RS_CTRL_KEEPALIVE),
			      0, (uintptr_t) NULL, (uintptr_t) NULL);
	}
	FUNC1(&rs->cq_lock);
}