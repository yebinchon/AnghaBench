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
typedef  int /*<<< orphan*/  pb2 ;
typedef  int /*<<< orphan*/  pb ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 scalar_t__ ENOTEMPTY ; 
 int MAXPATHLEN ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  USES_DIRS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,int) ; 
 int FUNC4 (char*,int,int) ; 
 int FUNC5 (char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*) ; 

__attribute__((used)) static void
FUNC8(const atf_tc_t *tc, const char *mountpath)
{
	char pb[MAXPATHLEN], pb2[MAXPATHLEN];
	int fd, rv;

	USES_DIRS;

	/* check we can create directories */
	FUNC7(pb, sizeof(pb), "%s/dir", mountpath);
	if (FUNC3(pb, 0777) == -1)
		FUNC1("mkdir");

	FUNC7(pb2, sizeof(pb2), "%s/dir/file", mountpath);
	fd = FUNC4(pb2, O_RDWR | O_CREAT, 0777);
	if (fd == -1)
		FUNC1("create file");
	FUNC2(fd);

	rv = FUNC5(pb);
	if (rv != -1 || errno != ENOTEMPTY)
		FUNC0("non-empty directory removed succesfully");

	if (FUNC6(pb2) == -1)
		FUNC1("cannot remove dir/file");

	if (FUNC5(pb) == -1)
		FUNC1("remove directory");
}