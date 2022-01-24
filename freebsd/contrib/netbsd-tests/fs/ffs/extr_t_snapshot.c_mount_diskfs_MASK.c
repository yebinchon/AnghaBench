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
typedef  int /*<<< orphan*/  uargs ;
struct ufs_args {int /*<<< orphan*/  fspec; } ;

/* Variables and functions */
 int /*<<< orphan*/  MOUNT_FFS ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,struct ufs_args*,int) ; 

__attribute__((used)) static void
FUNC3(const char *fspec, const char *path)
{
	struct ufs_args uargs;

	uargs.fspec = FUNC0(fspec);

	if (FUNC2(MOUNT_FFS, path, 0, &uargs, sizeof(uargs)) == -1)
		FUNC1("mount ffs %s", path);
}