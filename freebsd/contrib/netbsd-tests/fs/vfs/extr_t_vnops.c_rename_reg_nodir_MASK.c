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
struct stat {int st_ino; int st_nlink; } ;
typedef  int ino_t ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  EFAULT ; 
 scalar_t__ ENOENT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ errno ; 
 int FUNC7 (char const*) ; 
 int FUNC8 (char*,char*) ; 
 int FUNC9 (char*,int,int) ; 
 int FUNC10 (char*,char*) ; 
 int FUNC11 (char*,struct stat*) ; 

__attribute__((used)) static void
FUNC12(const atf_tc_t *tc, const char *mp)
{
	bool haslinks;
	struct stat sb;
	ino_t f1ino;

	if (FUNC3(tc))
		FUNC6("rename not supported by file system");

	if (FUNC7(mp) == -1)
		FUNC5("chdir mountpoint");

	if (FUNC2(tc) || FUNC4(tc))
		haslinks = false;
	else
		haslinks = true;

	if (FUNC9("file1", S_IFREG | 0777, -1) == -1)
		FUNC5("create file");
	if (FUNC9("file2", S_IFREG | 0777, -1) == -1)
		FUNC5("create file");

	if (FUNC11("file1", &sb) == -1)
		FUNC5("stat");
	f1ino = sb.st_ino;

	if (haslinks) {
		if (FUNC8("file1", "file_link") == -1)
			FUNC5("link");
		if (FUNC11("file_link", &sb) == -1)
			FUNC5("stat");
		FUNC1(sb.st_ino, f1ino);
		FUNC1(sb.st_nlink, 2);
	}

	if (FUNC11("file2", &sb) == -1)
		FUNC5("stat");

	if (FUNC10("file1", "file3") == -1)
		FUNC5("rename 1");
	if (FUNC11("file3", &sb) == -1)
		FUNC5("stat 1");
	if (haslinks) {
		FUNC1(sb.st_ino, f1ino);
	}
	if (FUNC11("file1", &sb) != -1 || errno != ENOENT)
		FUNC5("source 1");

	if (FUNC10("file3", "file2") == -1)
		FUNC5("rename 2");
	if (FUNC11("file2", &sb) == -1)
		FUNC5("stat 2");
	if (haslinks) {
		FUNC1(sb.st_ino, f1ino);
	}

	if (FUNC11("file3", &sb) != -1 || errno != ENOENT)
		FUNC5("source 2");

	if (haslinks) {
		if (FUNC10("file2", "file_link") == -1)
			FUNC5("rename hardlink");
		if (FUNC11("file2", &sb) != -1 || errno != ENOENT)
			FUNC5("source 3");
		if (FUNC11("file_link", &sb) == -1)
			FUNC5("stat 2");
		FUNC1(sb.st_ino, f1ino);
		FUNC1(sb.st_nlink, 1);
	}

	FUNC0(EFAULT, FUNC10("file2", NULL) == -1);
	FUNC0(EFAULT, FUNC10(NULL, "file2") == -1);

	FUNC7("/");
}