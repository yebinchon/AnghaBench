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
struct stat {int /*<<< orphan*/  st_nlink; } ;
typedef  int /*<<< orphan*/  pb3 ;
typedef  int /*<<< orphan*/  pb2 ;
typedef  int /*<<< orphan*/  pb1 ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ EINVAL ; 
 scalar_t__ EISDIR ; 
 scalar_t__ ENOTEMPTY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int S_IFREG ; 
 int /*<<< orphan*/  USES_DIRS ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct stat*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char const*,char*) ; 
 int FUNC9 (char*,int) ; 
 int FUNC10 (char*,int,int) ; 
 int FUNC11 (char*,char*) ; 
 int FUNC12 (char*) ; 
 int FUNC13 (char*,struct stat*) ; 

__attribute__((used)) static void
FUNC14(const atf_tc_t *tc, const char *mp)
{
	char pb1[MAXPATHLEN], pb2[MAXPATHLEN], pb3[MAXPATHLEN];
	struct stat ref, sb;

	if (FUNC2(tc))
		FUNC6("rename not supported by file system");

	USES_DIRS;

	FUNC8(pb1, sizeof(pb1), mp, "dir1");
	if (FUNC9(pb1, 0777) == -1)
		FUNC5("mkdir 1");

	FUNC8(pb2, sizeof(pb2), mp, "dir2");
	if (FUNC9(pb2, 0777) == -1)
		FUNC5("mkdir 2");
	FUNC8(pb2, sizeof(pb2), mp, "dir2/subdir");
	if (FUNC9(pb2, 0777) == -1)
		FUNC5("mkdir 3");

	FUNC8(pb3, sizeof(pb3), mp, "dir1/file");
	if (FUNC10(pb3, S_IFREG | 0777, -1) == -1)
		FUNC5("create file");
	if (FUNC13(pb3, &ref) == -1)
		FUNC5("stat of file");

	/*
	 * First try ops which should succeed.
	 */

	/* rename within directory */
	FUNC8(pb3, sizeof(pb3), mp, "dir3");
	if (FUNC11(pb1, pb3) == -1)
		FUNC5("rename 1");
	FUNC7(pb3, &ref);

	/* rename directory onto itself (two ways, should fail) */
	FUNC8(pb1, sizeof(pb1), mp, "dir3/.");
	if (FUNC11(pb1, pb3) != -1 || errno != EINVAL)
		FUNC5("rename 2");
	if (FUNC11(pb3, pb1) != -1 || errno != EISDIR)
		FUNC5("rename 3");

	FUNC7(pb3, &ref);

	/* rename father of directory into directory */
	FUNC8(pb1, sizeof(pb1), mp, "dir2/dir");
	FUNC8(pb2, sizeof(pb2), mp, "dir2");
	if (FUNC11(pb2, pb1) != -1 || errno != EINVAL)
		FUNC5("rename 4");

	/* same for grandfather */
	FUNC8(pb1, sizeof(pb1), mp, "dir2/subdir/dir2");
	if (FUNC11(pb2, pb1) != -1 || errno != EINVAL)
		FUNC4("rename 5");

	FUNC7(pb3, &ref);

	/* rename directory over a non-empty directory */
	if (FUNC11(pb2, pb3) != -1 || errno != ENOTEMPTY)
		FUNC4("rename 6");

	/* cross-directory rename */
	FUNC8(pb1, sizeof(pb1), mp, "dir3");
	FUNC8(pb2, sizeof(pb2), mp, "dir2/somedir");
	if (FUNC11(pb1, pb2) == -1)
		FUNC5("rename 7");
	FUNC7(pb2, &ref);

	/* move to parent directory */
	FUNC8(pb1, sizeof(pb1), mp, "dir2/somedir/../../dir3");
	if (FUNC11(pb2, pb1) == -1)
		FUNC5("rename 8");
	FUNC8(pb1, sizeof(pb1), mp, "dir2/../dir3");
	FUNC7(pb1, &ref);

	/* atomic cross-directory rename */
	FUNC8(pb3, sizeof(pb3), mp, "dir2/subdir");
	if (FUNC11(pb1, pb3) == -1)
		FUNC5("rename 9");
	FUNC7(pb3, &ref);

	/* rename directory over an empty directory */
	FUNC8(pb1, sizeof(pb1), mp, "parent");
	FUNC8(pb2, sizeof(pb2), mp, "parent/dir1");
	FUNC8(pb3, sizeof(pb3), mp, "parent/dir2");
	FUNC3(FUNC9(pb1, 0777));
	FUNC3(FUNC9(pb2, 0777));
	FUNC3(FUNC9(pb3, 0777));
	FUNC3(FUNC11(pb2, pb3));

	FUNC3(FUNC13(pb1, &sb));
	if (! FUNC1(tc))
		FUNC0(sb.st_nlink, 3);
	FUNC3(FUNC12(pb3));
	FUNC3(FUNC12(pb1));
}