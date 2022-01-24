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
struct stat {scalar_t__ st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 int O_CREAT ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int O_WRONLY ; 
 size_t FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC8 (struct stat*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (char*,int,...) ; 
 int /*<<< orphan*/  path ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(bool _dup, bool _dup2, bool _dup3)
{
	int mode[3] = { O_RDONLY, O_WRONLY, O_RDWR   };
	int perm[5] = { 0700, 0400, 0600, 0444, 0666 };
	struct stat st, st1;
	int fd, fd1, fd2;
	size_t i, j;

	/*
	 * Check that a duplicated descriptor
	 * retains the mode of the original file.
	 */
	for (i = 0; i < FUNC1(mode); i++) {

		for (j = 0; j < FUNC1(perm); j++) {

			fd1 = FUNC9(path, mode[i] | O_CREAT, perm[j]);
			fd2 = FUNC9("/etc/passwd", O_RDONLY);

			FUNC0(fd1 >= 0);
			FUNC0(fd2 >= 0);

			if (_dup != false)
				fd = FUNC4(fd1);
			else if (_dup2 != false)
				fd = FUNC5(fd1, fd2);
			else if (_dup3 != false)
				fd = FUNC6(fd1, fd2, O_CLOEXEC);
			else {
				fd = -1;
			}

			FUNC0(fd >= 0);

			(void)FUNC8(&st, 0, sizeof(struct stat));
			(void)FUNC8(&st1, 0, sizeof(struct stat));

			FUNC0(FUNC7(fd, &st) == 0);
			FUNC0(FUNC7(fd1, &st1) == 0);

			if (st.st_mode != st1.st_mode)
				FUNC2("invalid mode");

			(void)FUNC3(fd);
			(void)FUNC3(fd1);
			(void)FUNC3(fd2);
			(void)FUNC10(path);
		}
	}
}