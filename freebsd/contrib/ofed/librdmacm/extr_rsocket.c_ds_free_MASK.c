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
struct rsocket {scalar_t__ udp_sock; scalar_t__ index; scalar_t__ epfd; int /*<<< orphan*/  slock; int /*<<< orphan*/  rlock; int /*<<< orphan*/  cq_lock; int /*<<< orphan*/  cq_wait_lock; int /*<<< orphan*/  map_lock; int /*<<< orphan*/  dest_map; struct rsocket* sbuf; struct ds_qp* qp_list; struct rsocket* dmsg; } ;
struct ds_qp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ds_qp*) ; 
 int /*<<< orphan*/  FUNC2 (struct rsocket*,struct ds_qp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rsocket*) ; 
 int /*<<< orphan*/  FUNC5 (struct rsocket*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (struct rsocket*)) ; 

__attribute__((used)) static void FUNC7(struct rsocket *rs)
{
	struct ds_qp *qp;

	if (rs->udp_sock >= 0)
		FUNC0(rs->udp_sock);

	if (rs->index >= 0)
		FUNC5(rs);

	if (rs->dmsg)
		FUNC4(rs->dmsg);

	while ((qp = rs->qp_list)) {
		FUNC2(rs, qp);
		FUNC1(qp);
	}

	if (rs->epfd >= 0)
		FUNC0(rs->epfd);

	if (rs->sbuf)
		FUNC4(rs->sbuf);

	FUNC6(rs->dest_map, free);
	FUNC3(&rs->map_lock);
	FUNC3(&rs->cq_wait_lock);
	FUNC3(&rs->cq_lock);
	FUNC3(&rs->rlock);
	FUNC3(&rs->slock);
	FUNC4(rs);
}