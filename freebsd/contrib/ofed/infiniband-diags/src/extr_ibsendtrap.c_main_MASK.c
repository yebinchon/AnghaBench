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
typedef  int /*<<< orphan*/  usage_args ;
struct TYPE_2__ {char* trap_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IB_SMI_CLASS ; 
 int IB_SMI_DIRECT_CLASS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  error_port ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  ibd_ca ; 
 int /*<<< orphan*/  ibd_ca_port ; 
 int /*<<< orphan*/  ibd_mkey ; 
 int /*<<< orphan*/  FUNC3 (int,char**,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ optind ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*,int,char*,char*) ; 
 int FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  srcport ; 
 TYPE_1__* traps ; 

int FUNC11(int argc, char **argv)
{
	char usage_args[1024];
	int mgmt_classes[2] = { IB_SMI_CLASS, IB_SMI_DIRECT_CLASS };
	char *trap_name = NULL;
	int i, n, rc;

	n = FUNC10(usage_args, "[<trap_name>] [<error_port>]\n"
		    "\nArgument <trap_name> can be one of the following:\n");
	for (i = 0; traps[i].trap_name; i++) {
		n += FUNC9(usage_args + n, sizeof(usage_args) - n,
			      "  %s\n", traps[i].trap_name);
		if (n >= sizeof(usage_args))
			FUNC2(-1);
	}
	FUNC9(usage_args + n, sizeof(usage_args) - n,
		 "\n  default behavior is to send \"%s\"", traps[0].trap_name);

	FUNC3(argc, argv, NULL, "DGKL", NULL, NULL,
			    usage_args, NULL);

	argc -= optind;
	argv += optind;

	trap_name = argv[0] ? argv[0] : traps[0].trap_name;

	if (argc > 1)
		error_port = FUNC1(argv[1]);

	FUNC6(1);

	srcport = FUNC5(ibd_ca, ibd_ca_port, mgmt_classes, 2);
	if (!srcport)
		FUNC0("Failed to open '%s' port '%d'", ibd_ca, ibd_ca_port);

	FUNC8(srcport, ibd_mkey);

	rc = FUNC7(trap_name);
	FUNC4(srcport);
	return rc;
}