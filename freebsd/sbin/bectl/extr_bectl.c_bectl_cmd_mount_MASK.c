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
#define  BE_ERR_SUCCESS 128 
 int BE_MAXPATHLEN ; 
 int BE_MNT_DEEP ; 
 int /*<<< orphan*/  be ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(int argc, char *argv[])
{
	char result_loc[BE_MAXPATHLEN];
	char *bootenv, *mountpoint;
	int err, mntflags;

	/* XXX TODO: Allow shallow */
	mntflags = BE_MNT_DEEP;
	if (argc < 2) {
		FUNC1(stderr, "bectl mount: missing argument(s)\n");
		return (FUNC3(false));
	}

	if (argc > 3) {
		FUNC1(stderr, "bectl mount: too many arguments\n");
		return (FUNC3(false));
	}

	bootenv = argv[1];
	mountpoint = ((argc == 3) ? argv[2] : NULL);

	err = FUNC0(be, bootenv, mountpoint, mntflags, result_loc);

	switch (err) {
	case BE_ERR_SUCCESS:
		FUNC2("successfully mounted %s at %s\n", bootenv, result_loc);
		break;
	default:
		FUNC1(stderr,
		    (argc == 3) ? "failed to mount bootenv %s at %s\n" :
		    "failed to mount bootenv %s at temporary path %s\n",
		    bootenv, mountpoint);
	}

	return (err);
}