#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct rdma_addrinfo {int dummy; } ;
struct ibv_wc {int dummy; } ;
struct TYPE_14__ {int max_send_wr; int max_recv_wr; int max_send_sge; int max_recv_sge; } ;
struct ibv_qp_init_attr {int sq_sig_all; TYPE_1__ cap; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_19__ {scalar_t__ ai_qp_type; } ;
struct TYPE_18__ {TYPE_4__* event; } ;
struct TYPE_15__ {scalar_t__ private_data; } ;
struct TYPE_16__ {TYPE_2__ conn; } ;
struct TYPE_17__ {TYPE_3__ param; } ;

/* Variables and functions */
 scalar_t__ IBV_QPT_XRC_SEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 
 TYPE_6__ hints ; 
 TYPE_5__* id ; 
 int /*<<< orphan*/  FUNC2 (struct ibv_qp_init_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mr ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  port ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_5__**,struct rdma_addrinfo*,int /*<<< orphan*/ *,struct ibv_qp_init_attr*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (struct rdma_addrinfo*) ; 
 int FUNC12 (TYPE_5__*,struct ibv_wc*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*,struct rdma_addrinfo**) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  send_msg ; 
 int /*<<< orphan*/  server ; 
 int /*<<< orphan*/  srqn ; 

__attribute__((used)) static int FUNC15(void)
{
	struct rdma_addrinfo *res;
	struct ibv_qp_init_attr attr;
	struct ibv_wc wc;
	int ret;

	ret = FUNC13(server, port, &hints, &res);
	if (ret) {
		FUNC5("rdma_getaddrinfo: %s\n", FUNC1(ret));
		return ret;
	}

	FUNC2(&attr, 0, sizeof attr);
	attr.cap.max_send_wr = attr.cap.max_recv_wr = 1;
	attr.cap.max_send_sge = attr.cap.max_recv_sge = 1;
	attr.sq_sig_all = 1;
	ret = FUNC7(&id, res, NULL, &attr);
	FUNC11(res);
	if (ret) {
		FUNC3("rdma_create_ep");
		return ret;
	}

	mr = FUNC14(id, send_msg, sizeof send_msg);
	if (!mr) {
		FUNC3("rdma_reg_msgs");
		return ret;
	}

	ret = FUNC6(id, NULL);
	if (ret) {
		FUNC3("rdma_connect");
		return ret;
	}

	if (hints.ai_qp_type == IBV_QPT_XRC_SEND)
		srqn = FUNC0(*(__be32 *) id->event->param.conn.private_data);

	ret = FUNC4();
	if (ret) {
		FUNC3("post_send");
		return ret;
	}

	ret = FUNC12(id, &wc);
	if (ret <= 0) {
		FUNC3("rdma_get_recv_comp");
		return ret;
	}

	FUNC10(id);
	FUNC8(mr);
	FUNC9(id);
	return 0;
}