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
typedef  int /*<<< orphan*/  snapshot ;

/* Variables and functions */
#define  BE_ERR_SUCCESS 128 
 int BE_MAXPATHLEN ; 
 int /*<<< orphan*/  be ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int,char**,char*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int FUNC7 (int) ; 

__attribute__((used)) static int
FUNC8(int argc, char *argv[])
{
	char snapshot[BE_MAXPATHLEN];
	char *atpos, *bootenv, *snapname;
	int err, opt;
	bool recursive;

	snapname = NULL;
	recursive = false;
	while ((opt = FUNC4(argc, argv, "e:r")) != -1) {
		switch (opt) {
		case 'e':
			snapname = optarg;
			break;
		case 'r':
			recursive = true;
			break;
		default:
			FUNC3(stderr, "bectl create: unknown option '-%c'\n",
			    optopt);
			return (FUNC7(false));
		}
	}

	argc -= optind;
	argv += optind;

	if (argc != 1) {
		FUNC3(stderr, "bectl create: wrong number of arguments\n");
		return (FUNC7(false));
	}

	bootenv = *argv;

	err = BE_ERR_SUCCESS;
	if ((atpos = FUNC5(bootenv, '@')) != NULL) {
		/*
		 * This is the "create a snapshot variant". No new boot
		 * environment is to be created here.
		 */
		*atpos++ = '\0';
		err = FUNC2(be, bootenv, atpos, recursive, NULL);
	} else {
		if (snapname == NULL)
			/* Create from currently booted BE */
			err = FUNC2(be, FUNC0(be), NULL,
			    recursive, snapshot);
		else if (FUNC5(snapname, '@') != NULL)
			/* Create from given snapshot */
			FUNC6(snapshot, snapname, sizeof(snapshot));
		else
			/* Create from given BE */
			err = FUNC2(be, snapname, NULL, recursive,
			    snapshot);

		if (err == BE_ERR_SUCCESS)
			err = FUNC1(be, bootenv, snapshot,
					      recursive == true ? -1 : 0);
	}

	switch (err) {
	case BE_ERR_SUCCESS:
		break;
	default:
		if (atpos != NULL)
			FUNC3(stderr,
			    "failed to create a snapshot '%s' of '%s'\n",
			    atpos, bootenv);
		else if (snapname == NULL)
			FUNC3(stderr,
			    "failed to create bootenv %s\n", bootenv);
		else
			FUNC3(stderr,
			    "failed to create bootenv %s from snapshot %s\n",
			    bootenv, snapname);
	}

	return (err);
}