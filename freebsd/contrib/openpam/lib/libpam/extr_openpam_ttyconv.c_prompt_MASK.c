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

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,char*) ; 
 int FUNC6 (int,int,char const*,char*,int) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC7(const char *message, char *response, int echo)
{
	int ifd, ofd, ret;

	if (FUNC3(STDIN_FILENO)) {
		FUNC1(stdout);
#ifdef HAVE_FPURGE
		fpurge(stdin);
#endif
		ifd = STDIN_FILENO;
		ofd = STDOUT_FILENO;
	} else {
		if ((ifd = FUNC4("/dev/tty", O_RDWR)) < 0)
			/* no way to prevent echo */
			return (FUNC5(message, response));
		ofd = ifd;
	}
	ret = FUNC6(ifd, ofd, message, response, echo);
	if (ifd != STDIN_FILENO)
		FUNC0(ifd);
	return (ret);
}