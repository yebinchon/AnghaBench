#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ai_flags; void* ai_qp_type; int /*<<< orphan*/  ai_port_space; } ;
struct TYPE_4__ {int max_send_wr; int max_recv_wr; int max_send_sge; int max_recv_sge; } ;
struct TYPE_5__ {void* qp_type; TYPE_1__ cap; } ;

/* Variables and functions */
 void* IBV_QPT_RC ; 
 int /*<<< orphan*/  RAI_PASSIVE ; 
 int /*<<< orphan*/  RDMA_PS_TCP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  channel ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* connections ; 
 void* dst_addr ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char**,char*) ; 
 TYPE_3__ hints ; 
 TYPE_2__ init_qp_attr ; 
 int /*<<< orphan*/  nodes ; 
 void* optarg ; 
 void* port ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ rai ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 void* retries ; 
 int FUNC10 () ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 void* src_addr ; 
 void* timeout ; 

int FUNC13(int argc, char **argv)
{
	int op, ret;

	hints.ai_port_space = RDMA_PS_TCP;
	hints.ai_qp_type = IBV_QPT_RC;
	while ((op = FUNC5(argc, argv, "s:b:c:p:r:t:")) != -1) {
		switch (op) {
		case 's':
			dst_addr = optarg;
			break;
		case 'b':
			src_addr = optarg;
			break;
		case 'c':
			connections = FUNC1(optarg);
			break;
		case 'p':
			port = optarg;
			break;
		case 'r':
			retries = FUNC1(optarg);
			break;
		case 't':
			timeout = FUNC1(optarg);
			break;
		default:
			FUNC6("usage: %s\n", argv[0]);
			FUNC6("\t[-s server_address]\n");
			FUNC6("\t[-b bind_address]\n");
			FUNC6("\t[-c connections]\n");
			FUNC6("\t[-p port_number]\n");
			FUNC6("\t[-r retries]\n");
			FUNC6("\t[-t timeout_ms]\n");
			FUNC3(1);
		}
	}

	init_qp_attr.cap.max_send_wr = 1;
	init_qp_attr.cap.max_recv_wr = 1;
	init_qp_attr.cap.max_send_sge = 1;
	init_qp_attr.cap.max_recv_sge = 1;
	init_qp_attr.qp_type = IBV_QPT_RC;

	channel = FUNC7();
	if (!channel) {
		FUNC6("failed to create event channel\n");
		FUNC3(1);
	}

	if (dst_addr) {
		FUNC0();
		ret = FUNC10();
	} else {
		hints.ai_flags |= RAI_PASSIVE;
		ret = FUNC11();
	}

	FUNC2();
	FUNC8(channel);
	if (rai)
		FUNC9(rai);

	FUNC12();
	FUNC4(nodes);
	return ret;
}