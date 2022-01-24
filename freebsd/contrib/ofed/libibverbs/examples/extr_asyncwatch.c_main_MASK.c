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
struct option {char* name; int has_arg; char val; } ;
struct ibv_device {int dummy; } ;
struct ibv_context {int async_fd; } ;
struct TYPE_2__ {int port_num; } ;
struct ibv_async_event {int event_type; TYPE_1__ element; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWITCH_FALLTHROUGH ; 
 int /*<<< orphan*/  _IOLBF ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (int,char**,char*,struct option*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ibv_async_event*) ; 
 scalar_t__ FUNC4 (struct ibv_context*,struct ibv_async_event*) ; 
 struct ibv_device** FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (struct ibv_device*) ; 
 struct ibv_context* FUNC7 (struct ibv_device*) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

int FUNC14(int argc, char *argv[])
{
	struct ibv_device **dev_list;
	struct ibv_context *context;
	struct ibv_async_event event;
	char   *ib_devname = NULL;
	int i = 0;

	/* Force line-buffering in case stdout is redirected */
	FUNC10(stdout, NULL, _IOLBF, 0);

	while (1) {
		int ret = 1;
		int c;
		static struct option long_options[] = {
			{ .name = "ib-dev",    .has_arg = 1, .val = 'd' },
			{ .name = "help",      .has_arg = 0, .val = 'h' },
			{}
		};

		c = FUNC2(argc, argv, "d:h", long_options, NULL);
		if (c == -1)
			break;
		switch (c) {
		case 'd':
			ib_devname = FUNC12(optarg);
			break;
		case 'h':
			ret = 0;
			SWITCH_FALLTHROUGH;
		default:
			FUNC13(argv[0]);
			return ret;
		}
	}
	dev_list = FUNC5(NULL);
	if (!dev_list) {
		FUNC8("Failed to get IB devices list");
		return 1;
	}
	if (ib_devname) {
		for (; dev_list[i]; ++i) {
			if (!FUNC11(FUNC6(dev_list[i]), ib_devname))
				break;
		}
	}

	if (!dev_list[i]) {
		FUNC1(stderr, "IB device %s not found\n",
			ib_devname ? ib_devname : "");
		return 1;
	}

	context = FUNC7(dev_list[i]);
	if (!context) {
		FUNC1(stderr, "Couldn't get context for %s\n",
			FUNC6(dev_list[i]));
		return 1;
	}

	FUNC9("%s: async event FD %d\n",
	       FUNC6(dev_list[i]), context->async_fd);

	while (1) {
		if (FUNC4(context, &event))
			return 1;

		FUNC9("  event_type %s (%d), port %d\n",
		       FUNC0(event.event_type),
		       event.event_type, event.element.port_num);

		FUNC3(&event);
	}

	return 0;
}