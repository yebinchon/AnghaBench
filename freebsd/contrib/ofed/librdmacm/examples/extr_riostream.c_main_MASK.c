#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  ai_socktype; } ;
struct TYPE_3__ {int ai_flags; int /*<<< orphan*/  ai_family; int /*<<< orphan*/  ai_port_space; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_IB ; 
 int /*<<< orphan*/  AI_NUMERICHOST ; 
 int MSG_DONTWAIT ; 
 int RAI_FAMILY ; 
 int RAI_NUMERICHOST ; 
 int /*<<< orphan*/  RDMA_PS_TCP ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SWITCH_FALLTHROUGH ; 
 TYPE_2__ ai_hints ; 
 void* FUNC0 (void*) ; 
 void* buffer_size ; 
 int custom ; 
 void* dst_addr ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int flags ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int,char**,char*) ; 
 void* inline_size ; 
 void* iterations ; 
 void* optarg ; 
 int poll_timeout ; 
 void* port ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 TYPE_1__ rai_hints ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int size_option ; 
 void* src_addr ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char*,void*,int) ; 
 void* transfer_count ; 
 void* transfer_size ; 
 int use_rgai ; 

int FUNC8(int argc, char **argv)
{
	int op, ret;

	ai_hints.ai_socktype = SOCK_STREAM;
	rai_hints.ai_port_space = RDMA_PS_TCP;
	while ((op = FUNC3(argc, argv, "s:b:f:B:i:I:C:S:p:T:")) != -1) {
		switch (op) {
		case 's':
			dst_addr = optarg;
			break;
		case 'b':
			src_addr = optarg;
			break;
		case 'f':
			if (!FUNC7("ip", optarg, 2)) {
				ai_hints.ai_flags = AI_NUMERICHOST;
			} else if (!FUNC7("gid", optarg, 3)) {
				rai_hints.ai_flags = RAI_NUMERICHOST | RAI_FAMILY;
				rai_hints.ai_family = AF_IB;
				use_rgai = 1;
			} else {
				FUNC2(stderr, "Warning: unknown address format\n");
			}
			break;
		case 'B':
			buffer_size = FUNC0(optarg);
			break;
		case 'i':
			inline_size = FUNC0(optarg);
			break;
		case 'I':
			custom = 1;
			iterations = FUNC0(optarg);
			break;
		case 'C':
			custom = 1;
			transfer_count = FUNC0(optarg);
			break;
		case 'S':
			if (!FUNC7("all", optarg, 3)) {
				size_option = 1;
			} else {
				custom = 1;
				transfer_size = FUNC0(optarg);
			}
			break;
		case 'p':
			port = optarg;
			break;
		case 'T':
			if (!FUNC6(optarg))
				break;
			/* invalid option - fall through */
			SWITCH_FALLTHROUGH;
		default:
			FUNC4("usage: %s\n", argv[0]);
			FUNC4("\t[-s server_address]\n");
			FUNC4("\t[-b bind_address]\n");
			FUNC4("\t[-f address_format]\n");
			FUNC4("\t    name, ip, ipv6, or gid\n");
			FUNC4("\t[-B buffer_size]\n");
			FUNC4("\t[-i inline_size]\n");
			FUNC4("\t[-I iterations]\n");
			FUNC4("\t[-C transfer_count]\n");
			FUNC4("\t[-S transfer_size or all]\n");
			FUNC4("\t[-p port_number]\n");
			FUNC4("\t[-T test_option]\n");
			FUNC4("\t    a|async - asynchronous operation (use poll)\n");
			FUNC4("\t    b|blocking - use blocking calls\n");
			FUNC4("\t    n|nonblocking - use nonblocking calls\n");
			FUNC4("\t    v|verify - verify data\n");
			FUNC1(1);
		}
	}

	if (!(flags & MSG_DONTWAIT))
		poll_timeout = -1;

	ret = FUNC5();
	return ret;
}