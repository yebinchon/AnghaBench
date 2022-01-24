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
struct option {char* name; int has_arg; char val; } ;
struct ibv_wc {int status; int /*<<< orphan*/  qp_num; } ;
struct TYPE_4__ {int num_clients; int num_tests; int use_event; int /*<<< orphan*/  recv_cq; int /*<<< orphan*/  send_cq; TYPE_1__* rem_dest; void* gidx; void* sl; int /*<<< orphan*/  mtu; void* size; void* ib_port; } ;
struct TYPE_3__ {int pp_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 TYPE_2__ ctx ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int,char**,char*,struct option*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,struct ibv_wc*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  page_size ; 
 scalar_t__ FUNC7 (char*,int) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC17 (char*) ; 
 void* FUNC18 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 

int FUNC21(int argc, char *argv[])
{
	char          *ib_devname = NULL;
	char          *servername = NULL;
	int           port = 18515;
	int           i, total, cnt = 0;
	int           ne, qpi, num_cq_events = 0;
	struct ibv_wc wc;

	FUNC6();
	while (1) {
		int c;

		static struct option long_options[] = {
			{ .name = "port",      .has_arg = 1, .val = 'p' },
			{ .name = "ib-dev",    .has_arg = 1, .val = 'd' },
			{ .name = "ib-port",   .has_arg = 1, .val = 'i' },
			{ .name = "size",      .has_arg = 1, .val = 's' },
			{ .name = "mtu",       .has_arg = 1, .val = 'm' },
			{ .name = "clients",   .has_arg = 1, .val = 'c' },
			{ .name = "num_tests", .has_arg = 1, .val = 'n' },
			{ .name = "sl",        .has_arg = 1, .val = 'l' },
			{ .name = "events",    .has_arg = 0, .val = 'e' },
			{ .name = "gid-idx",   .has_arg = 1, .val = 'g' },
			{}
		};

		c = FUNC3(argc, argv, "p:d:i:s:m:c:n:l:eg:", long_options,
				NULL);
		if (c == -1)
			break;

		switch (c) {
		case 'p':
			port = FUNC18(optarg, NULL, 0);
			if (port < 0 || port > 65535) {
				FUNC20(argv[0]);
				return 1;
			}
			break;
		case 'd':
			ib_devname = FUNC17(optarg);
			break;
		case 'i':
			ctx.ib_port = FUNC18(optarg, NULL, 0);
			if (ctx.ib_port < 0) {
				FUNC20(argv[0]);
				return 1;
			}
			break;
		case 's':
			ctx.size = FUNC18(optarg, NULL, 0);
			break;
		case 'm':
			ctx.mtu = FUNC11(FUNC18(optarg, NULL, 0));
			if (ctx.mtu == 0) {
				FUNC20(argv[0]);
				return 1;
			}
			break;
		case 'c':
			ctx.num_clients = FUNC18(optarg, NULL, 0);
			break;
		case 'n':
			ctx.num_tests = FUNC18(optarg, NULL, 0);
			break;
		case 'l':
			ctx.sl = FUNC18(optarg, NULL, 0);
			break;
		case 'g':
			ctx.gidx = FUNC18(optarg, NULL, 0);
			break;
		case 'e':
			ctx.use_event = 1;
			break;
		default:
			FUNC20(argv[0]);
			return 1;
		}
	}

	if (optind == argc - 1) {
		servername = FUNC17(argv[optind]);
		ctx.num_clients = 1;
	} else if (optind < argc) {
		FUNC20(argv[0]);
		return 1;
	}

	page_size = FUNC19(_SC_PAGESIZE);

	if (FUNC10(ib_devname))
		return 1;

	if (FUNC12(ctx.num_clients)) {
		FUNC1(stderr, "Couldn't post receives\n");
		return 1;
	}

	if (servername) {
		if (FUNC7(servername, port))
			return 1;
	} else {
		if (FUNC14(port))
			return 1;

		for (i = 0; i < ctx.num_clients; i++)
			FUNC13(i);
	}

	total = ctx.num_clients * ctx.num_tests;
	while (cnt < total) {
		if (ctx.use_event) {
			if (FUNC2())
				return 1;

			++num_cq_events;
		}

		do {
			ne = FUNC5(ctx.recv_cq, 1, &wc);
			if (ne < 0) {
				FUNC1(stderr, "Error polling cq %d\n", ne);
				return 1;
			} else if (ne == 0) {
				break;
			}

			if (wc.status) {
				FUNC1(stderr, "Work completion error %d\n", wc.status);
				return 1;
			}

			FUNC12(ne);
			qpi = FUNC0(wc.qp_num);
			if (ctx.rem_dest[qpi].pp_cnt < ctx.num_tests)
				FUNC13(qpi);
			cnt += ne;
		} while (ne > 0);
	}

	for (cnt = 0; cnt < ctx.num_clients; cnt += ne) {
		ne = FUNC5(ctx.send_cq, 1, &wc);
		if (ne < 0) {
			FUNC1(stderr, "Error polling cq %d\n", ne);
			return 1;
		}
	}

	if (ctx.use_event)
		FUNC4(ctx.recv_cq, num_cq_events);

	/* Process should get an ack from the daemon to close its resources to
	  * make sure latest daemon's response sent via its target QP destined
	  * to an XSRQ created by another client won't be lost.
	  * Failure to do so may cause the other client to wait for that sent
	  * message forever. See comment on pp_post_send.
	*/
	if (servername) {
		if (FUNC8())
			return 1;
	} else if (FUNC15()) {
		return 1;
	}

	if (FUNC9())
		return 1;

	FUNC16("success\n");
	return 0;
}