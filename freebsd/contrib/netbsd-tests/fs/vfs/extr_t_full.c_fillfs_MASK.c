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
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 scalar_t__ ENOSPC ; 
 size_t FSTEST_IMGSIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 size_t NFSBONUS ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (char*,int) ; 
 size_t FUNC13 (int,char*,int) ; 

__attribute__((used)) static void
FUNC14(const atf_tc_t *tc, const char *mp)
{
	char buf[8192];
	size_t written;
	ssize_t n = 0; /* xxxgcc */
	size_t bonus;
	int fd, i = 0;

	if (FUNC1(tc) || FUNC2(tc) || FUNC3(tc)) {
		FUNC8("fs does not support explicit block allocation "
		    "(GOP_ALLOC)");
	}

	bonus = 0;
	if (FUNC0(tc))
		bonus = NFSBONUS;

	if (FUNC10(mp) == -1)
		FUNC7("chdir mountpoint");
	fd = FUNC12("afile", O_CREAT | O_RDWR);
	if (fd == -1)
		FUNC7("create file");

	for (written = 0; written < FSTEST_IMGSIZE + bonus; written +=n) {
		FUNC9(buf, i++, sizeof(buf)); /* known garbage */
		n = FUNC13(fd, buf, sizeof(buf));
		if (n == -1)
			break;
	}
	if (FUNC4(tc))
		FUNC5("PR kern/47656: Test known to be broken");
	if (n == -1) {
		if (errno != ENOSPC)
			FUNC7("write");
	} else {
		FUNC6("filled file system over size limit");
	}

	FUNC11(fd);
	FUNC10("/");
}