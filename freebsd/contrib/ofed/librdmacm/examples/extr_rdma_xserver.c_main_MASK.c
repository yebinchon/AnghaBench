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
struct TYPE_2__ {int /*<<< orphan*/  ai_qp_type; int /*<<< orphan*/  ai_port_space; int /*<<< orphan*/  ai_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBV_QPT_RC ; 
 int /*<<< orphan*/  IBV_QPT_XRC_RECV ; 
 int /*<<< orphan*/  RAI_PASSIVE ; 
 int /*<<< orphan*/  RDMA_PS_IB ; 
 int /*<<< orphan*/  RDMA_PS_TCP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,char**,char*) ; 
 TYPE_1__ hints ; 
 int /*<<< orphan*/ * optarg ; 
 int /*<<< orphan*/ * port ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(int argc, char **argv)
{
	int op, ret;

	hints.ai_flags = RAI_PASSIVE;
	hints.ai_port_space = RDMA_PS_TCP;
	hints.ai_qp_type = IBV_QPT_RC;

	while ((op = FUNC1(argc, argv, "p:c:")) != -1) {
		switch (op) {
		case 'p':
			port = optarg;
			break;
		case 'c':
			switch (FUNC4(optarg[0])) {
			case 'r':
				break;
			case 'x':
				hints.ai_port_space = RDMA_PS_IB;
				hints.ai_qp_type = IBV_QPT_XRC_RECV;
				break;
			default:
				goto err;
			}
			break;
		default:
			goto err;
		}
	}

	FUNC2("%s: start\n", argv[0]);
	ret = FUNC3();
	FUNC2("%s: end %d\n", argv[0], ret);
	return ret;

err:
	FUNC2("usage: %s\n", argv[0]);
	FUNC2("\t[-p port_number]\n");
	FUNC2("\t[-c communication type]\n");
	FUNC2("\t    r - RC: reliable-connected (default)\n");
	FUNC2("\t    x - XRC: extended-reliable-connected\n");
	FUNC0(1);
}