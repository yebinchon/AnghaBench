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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,char**,char*) ; 
 void* optarg ; 
 void* port ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 () ; 
 void* server ; 

int FUNC4(int argc, char **argv)
{
	int op, ret;

	while ((op = FUNC1(argc, argv, "s:p:")) != -1) {
		switch (op) {
		case 's':
			server = optarg;
			break;
		case 'p':
			port = optarg;
			break;
		default:
			FUNC2("usage: %s\n", argv[0]);
			FUNC2("\t[-s server_address]\n");
			FUNC2("\t[-p port_number]\n");
			FUNC0(1);
		}
	}

	FUNC2("rdma_client: start\n");
	ret = FUNC3();
	FUNC2("rdma_client: end %d\n", ret);
	return ret;
}