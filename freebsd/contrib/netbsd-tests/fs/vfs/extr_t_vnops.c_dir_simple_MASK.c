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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  pb ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  USES_DIRS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ errno ; 
 int FUNC2 (char*,int) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*) ; 

__attribute__((used)) static void
FUNC6(const atf_tc_t *tc, const char *mountpath)
{
	char pb[MAXPATHLEN];
	struct stat sb;

	USES_DIRS;

	/* check we can create directories */
	FUNC5(pb, sizeof(pb), "%s/dir", mountpath);
	if (FUNC2(pb, 0777) == -1)
		FUNC1("mkdir");
	if (FUNC4(pb, &sb) == -1)
		FUNC1("stat new directory");

	/* check we can remove then and that it makes them unreachable */
	if (FUNC3(pb) == -1)
		FUNC1("rmdir");
	if (FUNC4(pb, &sb) != -1 || errno != ENOENT)
		FUNC0("ENOENT expected from stat");
}