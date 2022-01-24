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
 int CTRL_MSG_SIZE ; 
 int /*<<< orphan*/  SWITCH_FALLTHROUGH ; 
 void* FUNC0 (void*) ; 
 void* buffer_size ; 
 int FUNC1 () ; 
 int custom ; 
 void* dst_addr ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ flags ; 
 int FUNC3 (int,char**,char*) ; 
 void* optarg ; 
 int poll_timeout ; 
 void* port ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* src_addr ; 
 int FUNC6 () ; 
 void* transfer_count ; 
 int transfer_size ; 

int FUNC7(int argc, char **argv)
{
	int op, ret;

	while ((op = FUNC3(argc, argv, "s:b:B:C:S:p:T:")) != -1) {
		switch (op) {
		case 's':
			dst_addr = optarg;
			break;
		case 'b':
			src_addr = optarg;
			break;
		case 'B':
			buffer_size = FUNC0(optarg);
			break;
		case 'C':
			custom = 1;
			transfer_count = FUNC0(optarg);
			break;
		case 'S':
			custom = 1;
			transfer_size = FUNC0(optarg);
			if (transfer_size < CTRL_MSG_SIZE) {
				FUNC4("size must be at least %d bytes\n",
				       CTRL_MSG_SIZE);
				FUNC2(1);
			}
			break;
		case 'p':
			port = optarg;
			break;
		case 'T':
			if (!FUNC5(optarg))
				break;
			/* invalid option - fall through */
			SWITCH_FALLTHROUGH;
		default:
			FUNC4("usage: %s\n", argv[0]);
			FUNC4("\t[-s server_address]\n");
			FUNC4("\t[-b bind_address]\n");
			FUNC4("\t[-B buffer_size]\n");
			FUNC4("\t[-C transfer_count]\n");
			FUNC4("\t[-S transfer_size]\n");
			FUNC4("\t[-p port_number]\n");
			FUNC4("\t[-T test_option]\n");
			FUNC4("\t    s|sockets - use standard tcp/ip sockets\n");
			FUNC4("\t    a|async - asynchronous operation (use poll)\n");
			FUNC4("\t    b|blocking - use blocking calls\n");
			FUNC4("\t    n|nonblocking - use nonblocking calls\n");
			FUNC4("\t    e|echo - server echoes all messages\n");
			FUNC2(1);
		}
	}

	if (flags)
		poll_timeout = -1;

	ret = dst_addr ? FUNC1() : FUNC6();
	return ret;
}