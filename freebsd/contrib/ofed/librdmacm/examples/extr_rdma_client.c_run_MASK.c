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
struct TYPE_2__ {int max_send_wr; int max_recv_wr; int max_send_sge; int max_recv_sge; int max_inline_data; } ;
struct rdma_addrinfo {int sq_sig_all; TYPE_1__ cap; int /*<<< orphan*/  qp_context; int /*<<< orphan*/  ai_port_space; } ;
struct ibv_wc {int dummy; } ;
struct ibv_qp_init_attr {int sq_sig_all; TYPE_1__ cap; int /*<<< orphan*/  qp_context; int /*<<< orphan*/  ai_port_space; } ;

/* Variables and functions */
 int IBV_SEND_INLINE ; 
 int /*<<< orphan*/  RDMA_PS_TCP ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  id ; 
 int /*<<< orphan*/  FUNC1 (struct rdma_addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mr ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  port ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct rdma_addrinfo*,int /*<<< orphan*/ *,struct rdma_addrinfo*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rdma_addrinfo*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct ibv_wc*) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct ibv_wc*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rdma_addrinfo*,struct rdma_addrinfo**) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  recv_msg ; 
 int send_flags ; 
 int /*<<< orphan*/  send_mr ; 
 int /*<<< orphan*/  send_msg ; 
 int /*<<< orphan*/  server ; 

__attribute__((used)) static int FUNC16(void)
{
	struct rdma_addrinfo hints, *res;
	struct ibv_qp_init_attr attr;
	struct ibv_wc wc;
	int ret;

	FUNC1(&hints, 0, sizeof hints);
	hints.ai_port_space = RDMA_PS_TCP;
	ret = FUNC12(server, port, &hints, &res);
	if (ret) {
		FUNC3("rdma_getaddrinfo: %s\n", FUNC0(ret));
		goto out;
	}

	FUNC1(&attr, 0, sizeof attr);
	attr.cap.max_send_wr = attr.cap.max_recv_wr = 1;
	attr.cap.max_send_sge = attr.cap.max_recv_sge = 1;
	attr.cap.max_inline_data = 16;
	attr.qp_context = id;
	attr.sq_sig_all = 1;
	ret = FUNC5(&id, res, NULL, &attr);
	// Check to see if we got inline data allowed or not
	if (attr.cap.max_inline_data >= 16)
		send_flags = IBV_SEND_INLINE;
	else
		FUNC3("rdma_client: device doesn't support IBV_SEND_INLINE, "
		       "using sge sends\n");

	if (ret) {
		FUNC2("rdma_create_ep");
		goto out_free_addrinfo;
	}

	mr = FUNC15(id, recv_msg, 16);
	if (!mr) {
		FUNC2("rdma_reg_msgs for recv_msg");
		ret = -1;
		goto out_destroy_ep;
	}
	if ((send_flags & IBV_SEND_INLINE) == 0) {
		send_mr = FUNC15(id, send_msg, 16);
		if (!send_mr) {
			FUNC2("rdma_reg_msgs for send_msg");
			ret = -1;
			goto out_dereg_recv;
		}
	}

	ret = FUNC13(id, NULL, recv_msg, 16, mr);
	if (ret) {
		FUNC2("rdma_post_recv");
		goto out_dereg_send;
	}

	ret = FUNC4(id, NULL);
	if (ret) {
		FUNC2("rdma_connect");
		goto out_dereg_send;
	}

	ret = FUNC14(id, NULL, send_msg, 16, send_mr, send_flags);
	if (ret) {
		FUNC2("rdma_post_send");
		goto out_disconnect;
	}

	while ((ret = FUNC11(id, &wc)) == 0);
	if (ret < 0) {
		FUNC2("rdma_get_send_comp");
		goto out_disconnect;
	}

	while ((ret = FUNC10(id, &wc)) == 0);
	if (ret < 0)
		FUNC2("rdma_get_recv_comp");
	else
		ret = 0;

out_disconnect:
	FUNC8(id);
out_dereg_send:
	if ((send_flags & IBV_SEND_INLINE) == 0)
		FUNC6(send_mr);
out_dereg_recv:
	FUNC6(mr);
out_destroy_ep:
	FUNC7(id);
out_free_addrinfo:
	FUNC9(res);
out:
	return ret;
}