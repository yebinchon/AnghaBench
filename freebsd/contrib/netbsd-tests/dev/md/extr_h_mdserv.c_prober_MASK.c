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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int EPIPE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void *
FUNC6(void *arg)
{
	int fd, error;
	char buf[4];
	ssize_t n;

	fd = FUNC3(arg, O_RDONLY);
	for (;;) {
		n = FUNC4(fd, buf, sizeof(buf));

		switch (n) {
		case 4:
			error = 0;
			goto out;

		case -1:
			if (errno == ENXIO) {
				FUNC5(1000);
				continue;
			}

			/* FALLTHROUGH */
		default:
			error = EPIPE;
			goto out;
		}
	}
 out:

	error = FUNC2(error);
	FUNC0(error, "rump_daemonize_done");

	if (error)
		FUNC1(1);

	return NULL;
}