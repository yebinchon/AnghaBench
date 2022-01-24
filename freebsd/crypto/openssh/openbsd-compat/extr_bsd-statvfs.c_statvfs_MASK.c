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
struct statvfs {int dummy; } ;
struct statfs {int dummy; } ;
typedef  int /*<<< orphan*/  fs ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (struct statvfs*,struct statfs*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct statfs*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char const*,struct statfs*) ; 

int FUNC3(const char *path, struct statvfs *buf)
{
#  ifdef HAVE_STATFS
	struct statfs fs;

	memset(&fs, 0, sizeof(fs));
	if (statfs(path, &fs) == -1)
		return -1;
	copy_statfs_to_statvfs(buf, &fs);
	return 0;
#  else
	errno = ENOSYS;
	return -1;
#  endif
}