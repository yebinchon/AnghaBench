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
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  osm_opensm_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,char*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC7 () ; 
 int FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ pidfile ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int FUNC12(osm_opensm_t * osm)
{
	pid_t pid;
	int fd;
	FILE *f;

	fd = FUNC8("/dev/null", O_WRONLY);
	if (fd < 0) {
		FUNC9("open");
		return -1;
	}

	if ((pid = FUNC5()) < 0) {
		FUNC9("fork");
		FUNC2(-1);
	} else if (pid > 0)
		FUNC2(0);

	FUNC11();

	if ((pid = FUNC5()) < 0) {
		FUNC9("fork");
		FUNC2(-1);
	} else if (pid > 0)
		FUNC2(0);

	if (pidfile) {
		FUNC10();
		f = FUNC4(pidfile, "w");
		if (f) {
			FUNC6(f, "%d\n", FUNC7());
			FUNC3(f);
		} else {
			FUNC9("fopen");
			FUNC2(1);
		}
	}

	FUNC0(0);
	FUNC0(1);
	FUNC0(2);

	FUNC1(fd, 0);
	FUNC1(fd, 1);
	FUNC1(fd, 2);

	return 0;
}