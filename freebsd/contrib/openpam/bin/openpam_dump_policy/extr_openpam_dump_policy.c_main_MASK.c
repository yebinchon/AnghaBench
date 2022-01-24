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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char**,char*) ; 
 int openpam_debug ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(int argc, char *argv[])
{
	int i, opt;

	while ((opt = FUNC1(argc, argv, "d")) != -1)
		switch (opt) {
		case 'd':
			openpam_debug = 1;
			break;
		default:
			FUNC4();
		}

	argc -= optind;
	argv += optind;

	if (argc < 1)
		FUNC4();

	FUNC3("#include <security/pam_appl.h>\n");
	FUNC3("#include \"openpam_impl.h\"\n");
	for (i = 0; i < argc; ++i)
		FUNC2(argv[i]);
	FUNC3("pam_policy_t *pam_embedded_policies[] = {\n");
	for (i = 0; i < argc; ++i)
		FUNC3("\t&pam_%s_policy,\n", argv[i]);
	FUNC3("\tNULL,\n");
	FUNC3("};\n");
	FUNC0(0);
}