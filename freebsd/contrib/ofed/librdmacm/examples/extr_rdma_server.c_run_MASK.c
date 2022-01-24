#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int max_send_wr; int max_recv_wr; int max_send_sge; int max_recv_sge; int max_inline_data; } ;
struct rdma_addrinfo {int sq_sig_all; TYPE_1__ cap; int /*<<< orphan*/  ai_port_space; int /*<<< orphan*/  ai_flags; } ;
struct ibv_wc {int dummy; } ;
struct ibv_qp_init_attr {int sq_sig_all; TYPE_1__ cap; int /*<<< orphan*/  ai_port_space; int /*<<< orphan*/  ai_flags; } ;
struct ibv_qp_attr {int sq_sig_all; TYPE_1__ cap; int /*<<< orphan*/  ai_port_space; int /*<<< orphan*/  ai_flags; } ;
struct TYPE_17__ {int /*<<< orphan*/  qp; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBV_QP_CAP ; 
 int IBV_SEND_INLINE ; 
 int /*<<< orphan*/  RAI_PASSIVE ; 
 int /*<<< orphan*/  RDMA_PS_TCP ; 
 char* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct rdma_addrinfo*,int /*<<< orphan*/ ,struct rdma_addrinfo*) ; 
 TYPE_2__* id ; 
 TYPE_2__* listen_id ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mr ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  port ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_2__**,struct rdma_addrinfo*,int /*<<< orphan*/ *,struct rdma_addrinfo*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct rdma_addrinfo*) ; 
 int FUNC11 (TYPE_2__*,struct ibv_wc*) ; 
 int FUNC12 (TYPE_2__*,TYPE_2__**) ; 
 int FUNC13 (TYPE_2__*,struct ibv_wc*) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rdma_addrinfo*,struct rdma_addrinfo**) ; 
 int FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC16 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC17 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  recv_msg ; 
 int send_flags ; 
 int /*<<< orphan*/  send_mr ; 
 int /*<<< orphan*/  send_msg ; 

__attribute__((used)) static int FUNC19(void)
{
	struct rdma_addrinfo hints, *res;
	struct ibv_qp_init_attr init_attr;
	struct ibv_qp_attr qp_attr;
	struct ibv_wc wc;
	int ret;

	FUNC2(&hints, 0, sizeof hints);
	hints.ai_flags = RAI_PASSIVE;
	hints.ai_port_space = RDMA_PS_TCP;
	ret = FUNC14(NULL, port, &hints, &res);
	if (ret) {
		FUNC4("rdma_getaddrinfo: %s\n", FUNC0(ret));
		return ret;
	}

	FUNC2(&init_attr, 0, sizeof init_attr);
	init_attr.cap.max_send_wr = init_attr.cap.max_recv_wr = 1;
	init_attr.cap.max_send_sge = init_attr.cap.max_recv_sge = 1;
	init_attr.cap.max_inline_data = 16;
	init_attr.sq_sig_all = 1;
	ret = FUNC6(&listen_id, res, NULL, &init_attr);
	if (ret) {
		FUNC3("rdma_create_ep");
		goto out_free_addrinfo;
	}

	ret = FUNC15(listen_id, 0);
	if (ret) {
		FUNC3("rdma_listen");
		goto out_destroy_listen_ep;
	}

	ret = FUNC12(listen_id, &id);
	if (ret) {
		FUNC3("rdma_get_request");
		goto out_destroy_listen_ep;
	}

	FUNC2(&qp_attr, 0, sizeof qp_attr);
	FUNC2(&init_attr, 0, sizeof init_attr);
	ret = FUNC1(id->qp, &qp_attr, IBV_QP_CAP,
			   &init_attr);
	if (ret) {
		FUNC3("ibv_query_qp");
		goto out_destroy_accept_ep;
	}
	if (init_attr.cap.max_inline_data >= 16)
		send_flags = IBV_SEND_INLINE;
	else
		FUNC4("rdma_server: device doesn't support IBV_SEND_INLINE, "
		       "using sge sends\n");

	mr = FUNC18(id, recv_msg, 16);
	if (!mr) {
		ret = -1;
		FUNC3("rdma_reg_msgs for recv_msg");
		goto out_destroy_accept_ep;
	}
	if ((send_flags & IBV_SEND_INLINE) == 0) {
		send_mr = FUNC18(id, send_msg, 16);
		if (!send_mr) {
			ret = -1;
			FUNC3("rdma_reg_msgs for send_msg");
			goto out_dereg_recv;
		}
	}

	ret = FUNC16(id, NULL, recv_msg, 16, mr);
	if (ret) {
		FUNC3("rdma_post_recv");
		goto out_dereg_send;
	}

	ret = FUNC5(id, NULL);
	if (ret) {
		FUNC3("rdma_accept");
		goto out_dereg_send;
	}

	while ((ret = FUNC11(id, &wc)) == 0);
	if (ret < 0) {
		FUNC3("rdma_get_recv_comp");
		goto out_disconnect;
	}

	ret = FUNC17(id, NULL, send_msg, 16, send_mr, send_flags);
	if (ret) {
		FUNC3("rdma_post_send");
		goto out_disconnect;
	}

	while ((ret = FUNC13(id, &wc)) == 0);
	if (ret < 0)
		FUNC3("rdma_get_send_comp");
	else
		ret = 0;

out_disconnect:
	FUNC9(id);
out_dereg_send:
	if ((send_flags & IBV_SEND_INLINE) == 0)
		FUNC7(send_mr);
out_dereg_recv:
	FUNC7(mr);
out_destroy_accept_ep:
	FUNC8(id);
out_destroy_listen_ep:
	FUNC8(listen_id);
out_free_addrinfo:
	FUNC10(res);
	return ret;
}