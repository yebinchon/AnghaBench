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
struct stat {int st_size; } ;
struct futx {int dummy; } ;

/* Variables and functions */
 int O_CLOEXEC ; 
 int O_RDWR ; 
 int /*<<< orphan*/  _PATH_UTX_LASTLOGIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,struct stat*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct stat sb;
	int fd;

	fd = FUNC2(_PATH_UTX_LASTLOGIN, O_RDWR|O_CLOEXEC, 0644);
	if (fd < 0)
		return;

	/*
	 * Truncate broken lastlogin files.  In the future we should
	 * check for older versions of the file format here and try to
	 * upgrade it.
	 */
	if (FUNC1(fd, &sb) != -1 && sb.st_size % sizeof(struct futx) != 0)
		FUNC3(fd, 0);
	FUNC0(fd);
}