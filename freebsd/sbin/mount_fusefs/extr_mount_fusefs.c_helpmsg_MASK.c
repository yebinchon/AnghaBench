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
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC4(void)
{
	if (! FUNC3("MOUNT_FUSEFS_CALL_BY_LIB")) {
		FUNC0();
		FUNC2(stderr, "description of options:\n");
	}

	/*
	 * The main use case of this function is giving info embedded in general
	 * FUSE lib help output. Therefore the style and the content of the output
	 * tries to fit there as much as possible.
	 */
	FUNC2(stderr,
	        "    -o allow_other         allow access to other users\n"
	        /* "    -o nonempty            allow mounts over non-empty file/dir\n" */
	        "    -o default_permissions enable permission checking by kernel\n"
		"    -o intr                interruptible mount\n"
		/*
	        "    -o fsname=NAME         set filesystem name\n"
	        "    -o large_read          issue large read requests (2.4 only)\n"
		 */
	        "    -o subtype=NAME        set filesystem type\n"
	        "    -o max_read=N          set maximum size of read requests\n"
	        "    -o noprivate           allow secondary mounting of the filesystem\n"
	        "    -o neglect_shares      don't report EBUSY when unmount attempted\n"
	        "                           in presence of secondary mounts\n" 
	        "    -o push_symlinks_in    prefix absolute symlinks with mountpoint\n"
	        );
	FUNC1(EX_USAGE);
}