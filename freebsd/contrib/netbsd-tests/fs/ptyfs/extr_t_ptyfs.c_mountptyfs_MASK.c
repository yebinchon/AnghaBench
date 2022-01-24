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
struct ptyfs_args {int mode; int /*<<< orphan*/  version; } ;
typedef  int /*<<< orphan*/  args ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  MOUNT_PTYFS ; 
 int /*<<< orphan*/  PTYFS_ARGSVERSION ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (struct ptyfs_args*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int,struct ptyfs_args*,int) ; 

__attribute__((used)) static void
FUNC4(const char *mp, int flags)
{
	struct ptyfs_args args;

	if (FUNC2("/mp", 0777) == -1) {
		if (errno != EEXIST)
			FUNC0("mp1");
	}
	FUNC1(&args, 0, sizeof(args));
	args.version = PTYFS_ARGSVERSION;
	args.mode = 0777;
	if (FUNC3(MOUNT_PTYFS, mp, flags, &args, sizeof(args)) == -1)
		FUNC0("could not mount ptyfs");
}