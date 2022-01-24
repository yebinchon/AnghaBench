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
 int /*<<< orphan*/  DEVINFO_ROOT_DEVICE ; 
 int /*<<< orphan*/  all_flag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ dump_flag ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  find_unmatched ; 
 int FUNC8 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* linker_hints ; 
 int /*<<< orphan*/  longopts ; 
 int /*<<< orphan*/ * nomatch_str ; 
 void* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/ * root ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  unbound_flag ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  verbose_flag ; 

int
FUNC12(int argc, char **argv)
{
	int ch;

	while ((ch = FUNC8(argc, argv, "adh:p:uv",
		    longopts, NULL)) != -1) {
		switch (ch) {
		case 'a':
			all_flag++;
			break;
		case 'd':
			dump_flag++;
			break;
		case 'h':
			linker_hints = optarg;
			break;
		case 'p':
			nomatch_str = optarg;
			break;
		case 'u':
			unbound_flag++;
			break;
		case 'v':
			verbose_flag++;
			break;
		default:
			FUNC11();
		}
	}
	argc -= optind;
	argv += optind;

	if (argc >= 1)
		FUNC11();

	FUNC9();
	if (dump_flag) {
		FUNC10(NULL, NULL, NULL);
		FUNC6(0);
	}

	if (FUNC3())
		FUNC4(1, "devinfo_init");
	if ((root = FUNC2(DEVINFO_ROOT_DEVICE)) == NULL)
		FUNC5(1, "can't find root device");
	if (nomatch_str != NULL)
		FUNC7(nomatch_str);
	else
		FUNC0(root, find_unmatched, (void *)0);
	FUNC1();
}