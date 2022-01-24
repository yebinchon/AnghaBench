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
struct option {char* name; int has_arg; char val; } ;
struct ibv_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int,char**,char*,struct option*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ibv_device**) ; 
 struct ibv_device** FUNC4 (int*) ; 
 char* FUNC5 (struct ibv_device*) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (struct ibv_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int verbose ; 

int FUNC13(int argc, char *argv[])
{
	char *ib_devname = NULL;
	int ret = 0;
	struct ibv_device **dev_list, **orig_dev_list;
	int num_of_hcas;
	int ib_port = 0;

	/* parse command line options */
	while (1) {
		int c;
		static struct option long_options[] = {
			{ .name = "ib-dev",   .has_arg = 1, .val = 'd' },
			{ .name = "ib-port",  .has_arg = 1, .val = 'i' },
			{ .name = "list",     .has_arg = 0, .val = 'l' },
			{ .name = "verbose",  .has_arg = 0, .val = 'v' },
			{ }
		};

		c = FUNC2(argc, argv, "d:i:lv", long_options, NULL);
		if (c == -1)
			break;

		switch (c) {
		case 'd':
			ib_devname = FUNC10(optarg);
			break;

		case 'i':
			ib_port = FUNC11(optarg, NULL, 0);
			if (ib_port <= 0) {
				FUNC12(argv[0]);
				return 1;
			}
			break;

		case 'v':
			verbose = 1;
			break;

		case 'l':
			dev_list = orig_dev_list = FUNC4(&num_of_hcas);
			if (!dev_list) {
				FUNC6("Failed to get IB devices list");
				return -1;
			}

			FUNC8("%d HCA%s found:\n", num_of_hcas,
			       num_of_hcas != 1 ? "s" : "");

			while (*dev_list) {
				FUNC8("\t%s\n", FUNC5(*dev_list));
				++dev_list;
			}

			FUNC8("\n");

			FUNC3(orig_dev_list);

			return 0;

		default:
			FUNC12(argv[0]);
			return -1;
		}
	}

	dev_list = orig_dev_list = FUNC4(NULL);
	if (!dev_list) {
		FUNC6("Failed to get IB devices list");
		return -1;
	}

	if (ib_devname) {
		while (*dev_list) {
			if (!FUNC9(FUNC5(*dev_list), ib_devname))
				break;
			++dev_list;
		}

		if (!*dev_list) {
			FUNC0(stderr, "IB device '%s' wasn't found\n", ib_devname);
			return -1;
		}

		ret |= FUNC7(*dev_list, ib_port);
	} else {
		if (!*dev_list) {
			FUNC0(stderr, "No IB devices found\n");
			return -1;
		}

		while (*dev_list) {
			ret |= FUNC7(*dev_list, ib_port);
			++dev_list;
		}
	}

	if (ib_devname)
		FUNC1(ib_devname);

	FUNC3(orig_dev_list);

	return ret;
}