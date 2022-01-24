#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rsocket {scalar_t__ type; scalar_t__ index; int /*<<< orphan*/  slock; int /*<<< orphan*/  rlock; int /*<<< orphan*/  cq_lock; int /*<<< orphan*/  cq_wait_lock; int /*<<< orphan*/  map_lock; TYPE_1__* cm_id; int /*<<< orphan*/  unack_cqe; struct rsocket* target_buffer_list; scalar_t__ target_mr; struct rsocket* rbuf; scalar_t__ rmr; struct rsocket* sbuf; scalar_t__ smr; struct rsocket* rmsg; } ;
struct TYPE_3__ {int /*<<< orphan*/  recv_cq; scalar_t__ qp; } ;

/* Variables and functions */
 scalar_t__ SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (struct rsocket*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rsocket*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct rsocket*) ; 
 int /*<<< orphan*/  FUNC8 (struct rsocket*) ; 

__attribute__((used)) static void FUNC9(struct rsocket *rs)
{
	if (rs->type == SOCK_DGRAM) {
		FUNC0(rs);
		return;
	}

	if (rs->rmsg)
		FUNC2(rs->rmsg);

	if (rs->sbuf) {
		if (rs->smr)
			FUNC4(rs->smr);
		FUNC2(rs->sbuf);
	}

	if (rs->rbuf) {
		if (rs->rmr)
			FUNC4(rs->rmr);
		FUNC2(rs->rbuf);
	}

	if (rs->target_buffer_list) {
		if (rs->target_mr)
			FUNC4(rs->target_mr);
		FUNC2(rs->target_buffer_list);
	}

	if (rs->cm_id) {
		FUNC7(rs);
		if (rs->cm_id->qp) {
			FUNC3(rs->cm_id->recv_cq, rs->unack_cqe);
			FUNC6(rs->cm_id);
		}
		FUNC5(rs->cm_id);
	}

	if (rs->index >= 0)
		FUNC8(rs);

	FUNC1(&rs->map_lock);
	FUNC1(&rs->cq_wait_lock);
	FUNC1(&rs->cq_lock);
	FUNC1(&rs->rlock);
	FUNC1(&rs->slock);
	FUNC2(rs);
}