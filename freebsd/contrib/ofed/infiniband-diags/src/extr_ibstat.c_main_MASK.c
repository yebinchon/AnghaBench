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
struct ibdiag_opt {char* member_0; char member_1; char* member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_2; } ;
typedef  int /*<<< orphan*/  names ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int UMAD_CA_NAME_LEN ; 
 int UMAD_MAX_DEVICES ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char**,int /*<<< orphan*/ *,char*,struct ibdiag_opt const*,int /*<<< orphan*/ ,char*,char const**) ; 
 scalar_t__ list_only ; 
 scalar_t__ list_ports ; 
 scalar_t__ optind ; 
 scalar_t__ FUNC3 (char**,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  process_opt ; 
 int /*<<< orphan*/  short_format ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (char**,int) ; 
 scalar_t__ FUNC9 () ; 

int FUNC10(int argc, char *argv[])
{
	char names[UMAD_MAX_DEVICES][UMAD_CA_NAME_LEN];
	int dev_port = -1;
	int n, i;

	const struct ibdiag_opt opts[] = {
		{"list_of_cas", 'l', 0, NULL, "list all IB devices"},
		{"short", 's', 0, NULL, "short output"},
		{"port_list", 'p', 0, NULL, "show port list"},
		{0}
	};
	char usage_args[] = "<ca_name> [portnum]";
	const char *usage_examples[] = {
		"-l       # list all IB devices",
		"mthca0 2 # stat port 2 of 'mthca0'",
		NULL
	};

	FUNC2(argc, argv, NULL, "CDeGKLPsty", opts, process_opt,
			    usage_args, usage_examples);

	argc -= optind;
	argv += optind;

	if (argc > 1)
		dev_port = FUNC7(argv[1], 0, 0);

	if (FUNC9() < 0)
		FUNC0("can't init UMAD library");

	if ((n = FUNC8(names, UMAD_MAX_DEVICES)) < 0)
		FUNC0("can't list IB device names");

	if (argc) {
		for (i = 0; i < n; i++)
			if (!FUNC5(names[i], argv[0], sizeof names[i]))
				break;
		if (i >= n)
			FUNC0("'%s' IB device can't be found", argv[0]);

		FUNC6(names[0], argv[0], sizeof(names[0])-1);
		names[0][sizeof(names[0])-1] = '\0';
		n = 1;
	}

	if (list_ports) {
		if (FUNC3(names, n) < 0)
			FUNC0("can't list ports");
		return 0;
	}

	for (i = 0; i < n; i++) {
		if (list_only)
			FUNC4("%s\n", names[i]);
		else if (FUNC1(names[i], dev_port, short_format) < 0)
			FUNC0("stat of IB device '%s' failed", names[i]);
	}

	return 0;
}