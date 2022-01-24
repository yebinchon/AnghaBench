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
struct stat {int st_flags; } ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 scalar_t__ EOPNOTSUPP ; 
 scalar_t__ EPERM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  RUMP_RFCFDG ; 
 int UF_IMMUTABLE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (char const*,int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (char const*,int,int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (char const*,struct stat*) ; 
 int FUNC13 (char const*) ; 

__attribute__((used)) static void
FUNC14(const atf_tc_t *tc, const char *mp)
{
	const char *name = "file.test";
	int fd, fflags;
	struct stat st;

	FUNC0();

	if ((fd = FUNC10(name, O_RDWR|O_CREAT, 0666)) == -1)
		FUNC4("open");
	if (FUNC9(fd) == -1)
		FUNC4("close");

	if (FUNC12(name, &st) == -1)
		FUNC4("stat");
	if (FUNC2(tc))
		FUNC3("PR kern/47656: Test known to be broken");
	if (FUNC8(name, st.st_flags) == -1) {
		if (errno == EOPNOTSUPP)
			FUNC5("file flags not supported by file system");
		FUNC4("chflags");
	}

	fflags = st.st_flags | UF_IMMUTABLE;

	FUNC7(RUMP_RFCFDG);
	if (FUNC11(1) == -1)
		FUNC4("setuid");
	fflags |= UF_IMMUTABLE;
	if (FUNC8(name, fflags) != -1 || errno != EPERM)
		FUNC4("chflags");
	FUNC6();

	if (FUNC8(name, fflags) == -1)
		FUNC4("chflags");

	fflags &= ~UF_IMMUTABLE;
	if (FUNC8(name, fflags) == -1)
		FUNC4("chflags");

	if (FUNC13(name) == -1)
		FUNC4("unlink");

	FUNC1();
}