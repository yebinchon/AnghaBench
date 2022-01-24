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
struct kld_file_stat {int version; char* name; } ;
typedef  int /*<<< orphan*/  stat ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int LINKER_UNLOAD_FORCE ; 
 int LINKER_UNLOAD_NORMAL ; 
 int OPT_FORCE ; 
 int OPT_ID ; 
 int OPT_NULL ; 
 int OPT_VERBOSE ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC3 (int,char**,char*) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int,struct kld_file_stat*) ; 
 scalar_t__ FUNC6 (int,int) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9(int argc, char** argv)
{
	struct kld_file_stat stat;
	int c, fileid, force, opt;
	char *filename;

	filename = NULL;
	opt = OPT_NULL;

	while ((c = FUNC3(argc, argv, "finv")) != -1) {
		switch (c) {
		case 'f':
			opt |= OPT_FORCE;
			break;
		case 'i':
			opt |= OPT_ID;
			break;
		case 'n':
			/* 
			 * XXX: For backward compatibility. Currently does
			 * nothing
			 */
			break;
		case 'v':
			opt |= OPT_VERBOSE;
			break;
		default:
			FUNC8();
		}
	}

	argc -= optind;
	argv += optind;

	if (argc == 0)
		FUNC8();

	while ((filename = *argv++) != NULL) {
		if (opt & OPT_ID) {
			fileid = FUNC0(filename);
			if (fileid < 0)
				FUNC2(EXIT_FAILURE, "Invalid ID %s", optarg);
		} else {
			if ((fileid = FUNC4(filename)) < 0)
				FUNC2(EXIT_FAILURE, "can't find file %s",
				    filename);
		}
		if (opt & OPT_VERBOSE) {
			stat.version = sizeof(stat);
			if (FUNC5(fileid, &stat) < 0)
				FUNC1(EXIT_FAILURE, "can't stat file");
			(void) FUNC7("Unloading %s, id=%d\n", stat.name,
			    fileid);
		}
		if (opt & OPT_FORCE)
			force = LINKER_UNLOAD_FORCE;
		else
			force = LINKER_UNLOAD_NORMAL;

		if (FUNC6(fileid, force) < 0)
			FUNC1(EXIT_FAILURE, "can't unload file");
	}

	return (EXIT_SUCCESS);
}