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
struct statvfs {int f_flag; } ;

/* Variables and functions */
 scalar_t__ ENOSYS ; 
 int ST_NOSUID ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 scalar_t__ FUNC1 (char const*,struct statvfs*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int
FUNC4(int argc, char **argv)
{
	const char *path = ".";
	struct statvfs sb;

	if (argc > 2)
		FUNC3();
	else if (argc == 2)
		path = argv[1];

	if (FUNC1(path, &sb) != 0) {
		/* Don't return an error if the host doesn't support statvfs */
		if (errno == ENOSYS)
			return 0;
		FUNC0(stderr, "statvfs for \"%s\" failed: %s\n",
		     path, FUNC2(errno));
	}
	return (sb.f_flag & ST_NOSUID) ? 1 : 0;
}