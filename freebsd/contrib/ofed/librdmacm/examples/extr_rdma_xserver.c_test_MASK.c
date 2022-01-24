#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int max_send_wr; int max_recv_wr; int max_send_sge; int max_recv_sge; } ;
struct rdma_conn_param {int private_data_len; int /*<<< orphan*/ * private_data; TYPE_1__ cap; } ;
struct rdma_addrinfo {int dummy; } ;
struct ibv_wc {int dummy; } ;
struct ibv_qp_init_attr {int private_data_len; int /*<<< orphan*/ * private_data; TYPE_1__ cap; } ;
struct TYPE_5__ {scalar_t__ ai_qp_type; } ;

/* Variables and functions */
 scalar_t__ IBV_QPT_XRC_RECV ; 
 int FUNC0 () ; 
 char* FUNC1 (int) ; 
 TYPE_2__ hints ; 
 int /*<<< orphan*/  id ; 
 int /*<<< orphan*/  listen_id ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_conn_param*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mr ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  port ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct rdma_conn_param*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct rdma_addrinfo*,int /*<<< orphan*/ *,struct rdma_conn_param*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rdma_addrinfo*) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct ibv_wc*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,struct rdma_addrinfo**) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  recv_msg ; 
 int /*<<< orphan*/  srqn ; 

__attribute__((used)) static int FUNC17(void)
{
	struct rdma_addrinfo *res;
	struct ibv_qp_init_attr attr;
	struct rdma_conn_param param;
	struct ibv_wc wc;
	int ret;

	ret = FUNC13(NULL, port, &hints, &res);
	if (ret) {
		FUNC4("rdma_getaddrinfo: %s\n", FUNC1(ret));
		return ret;
	}

	FUNC2(&attr, 0, sizeof attr);
	attr.cap.max_send_wr = attr.cap.max_recv_wr = 1;
	attr.cap.max_send_sge = attr.cap.max_recv_sge = 1;
	ret = FUNC6(&listen_id, res, NULL, &attr);
	FUNC10(res);
	if (ret) {
		FUNC3("rdma_create_ep");
		return ret;
	}

	ret = FUNC14(listen_id, 0);
	if (ret) {
		FUNC3("rdma_listen");
		return ret;
	}

	ret = FUNC12(listen_id, &id);
	if (ret) {
		FUNC3("rdma_get_request");
		return ret;
	}

	if (hints.ai_qp_type == IBV_QPT_XRC_RECV) {
		ret = FUNC0();
		if (ret)
			return ret;
	}

	mr = FUNC16(id, recv_msg, sizeof recv_msg);
	if (!mr) {
		FUNC3("rdma_reg_msgs");
		return ret;
	}

	ret = FUNC15(id, NULL, recv_msg, sizeof recv_msg, mr);
	if (ret) {
		FUNC3("rdma_post_recv");
		return ret;
	}

	FUNC2(&param, 0, sizeof param);
	param.private_data = &srqn;
	param.private_data_len = sizeof srqn;
	ret = FUNC5(id, &param);
	if (ret) {
		FUNC3("rdma_accept");
		return ret;
	}

	ret = FUNC11(id, &wc);
	if (ret <= 0) {
		FUNC3("rdma_get_recv_comp");
		return ret;
	}

	FUNC9(id);
	FUNC7(mr);
	FUNC8(id);
	FUNC8(listen_id);
	return 0;
}