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
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  func1 ; 
 int /*<<< orphan*/  func2 ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*) ; 
 int FUNC6 (int) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(const atf_tc_t *tc, const char *path)
{
	int res, fd, quit;
	pthread_t th1, th2;

	if (FUNC0(tc))
		FUNC2("directories not supported by file system");

	fd = FUNC7(".", O_RDONLY, 0666);
	if (fd == -1)
		FUNC1("open failed");
	res = FUNC5(path);
	if (res == -1)
		FUNC1("chdir failed");

	quit = 0;

	res = FUNC3(&th1, NULL, func1, &quit);
	if (res != 0)
		FUNC1("pthread_create1 failed");
	res = FUNC3(&th2, NULL, func2, &quit);
	if (res != 0)
		FUNC1("pthread_create2 failed");

	FUNC8(10);

	quit = 1;

	res = FUNC4(th2, NULL);
	if (res != 0)
		FUNC1("pthread_join2 failed");
	res = FUNC4(th1, NULL);
	if (res != 0)
		FUNC1("pthread_join1 failed");

	res = FUNC6(fd);
	if (res == -1)
		FUNC1("fchdir failed");
}