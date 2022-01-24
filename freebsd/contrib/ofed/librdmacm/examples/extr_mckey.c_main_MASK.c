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
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  channel; void* connects_left; int /*<<< orphan*/  dst_in; struct sockaddr* dst_addr; int /*<<< orphan*/  src_in; struct sockaddr* src_addr; } ;

/* Variables and functions */
 int RDMA_PS_IPOIB ; 
 int RDMA_PS_UDP ; 
 scalar_t__ FUNC0 () ; 
 void* FUNC1 (void*) ; 
 void* connections ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* dst_addr ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,char**,char*) ; 
 int is_sender ; 
 void* message_count ; 
 void* message_size ; 
 void* optarg ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  port_space ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 
 void* src_addr ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ test ; 
 int unmapped_addr ; 

int FUNC11(int argc, char **argv)
{
	int op, ret;


	while ((op = FUNC4(argc, argv, "m:M:sb:c:C:S:p:")) != -1) {
		switch (op) {
		case 'm':
			dst_addr = optarg;
			break;
		case 'M':
			unmapped_addr = 1;
			dst_addr = optarg;
			break;
		case 's':
			is_sender = 1;
			break;
		case 'b':
			src_addr = optarg;
			test.src_addr = (struct sockaddr *) &test.src_in;
			break;
		case 'c':
			connections = FUNC1(optarg);
			break;
		case 'C':
			message_count = FUNC1(optarg);
			break;
		case 'S':
			message_size = FUNC1(optarg);
			break;
		case 'p':
			port_space = FUNC10(optarg, NULL, 0);
			break;
		default:
			FUNC6("usage: %s\n", argv[0]);
			FUNC6("\t-m multicast_address\n");
			FUNC6("\t[-M unmapped_multicast_address]\n"
			       "\t replaces -m and requires -b\n");
			FUNC6("\t[-s(ender)]\n");
			FUNC6("\t[-b bind_address]\n");
			FUNC6("\t[-c connections]\n");
			FUNC6("\t[-C message_count]\n");
			FUNC6("\t[-S message_size]\n");
			FUNC6("\t[-p port_space - %#x for UDP (default), "
			       "%#x for IPOIB]\n", RDMA_PS_UDP, RDMA_PS_IPOIB);
			FUNC3(1);
		}
	}

	if (unmapped_addr && !src_addr) {
		FUNC6("unmapped multicast address requires binding "
			"to source address\n");
		FUNC3(1);
	}

	test.dst_addr = (struct sockaddr *) &test.dst_in;
	test.connects_left = connections;

	test.channel = FUNC7();
	if (!test.channel) {
		FUNC5("failed to create event channel");
		FUNC3(1);
	}

	if (FUNC0())
		FUNC3(1);

	ret = FUNC9();

	FUNC6("test complete\n");
	FUNC2();
	FUNC8(test.channel);

	FUNC6("return status %d\n", ret);
	return ret;
}