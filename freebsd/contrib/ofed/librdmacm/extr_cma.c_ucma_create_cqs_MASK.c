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
typedef  int /*<<< orphan*/  uint32_t ;
struct rdma_cm_id {void* send_cq; void* send_cq_channel; int /*<<< orphan*/  verbs; void* recv_cq; void* recv_cq_channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rdma_cm_id*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_cm_id*) ; 

__attribute__((used)) static int FUNC4(struct rdma_cm_id *id, uint32_t send_size, uint32_t recv_size)
{
	if (recv_size) {
		id->recv_cq_channel = FUNC1(id->verbs);
		if (!id->recv_cq_channel)
			goto err;

		id->recv_cq = FUNC2(id->verbs, recv_size,
					    id, id->recv_cq_channel, 0);
		if (!id->recv_cq)
			goto err;
	}

	if (send_size) {
		id->send_cq_channel = FUNC1(id->verbs);
		if (!id->send_cq_channel)
			goto err;

		id->send_cq = FUNC2(id->verbs, send_size,
					    id, id->send_cq_channel, 0);
		if (!id->send_cq)
			goto err;
	}

	return 0;
err:
	FUNC3(id);
	return FUNC0(ENOMEM);
}