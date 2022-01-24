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
struct sockaddr_un {int /*<<< orphan*/  sun_family; int /*<<< orphan*/  sun_path; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  PF_LOCAL ; 
 int /*<<< orphan*/  PF_UNIX ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (struct sockaddr_un*) ; 
 int FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int
FUNC7(int argc, char **argv)
{
	int error, fd;
	struct sockaddr_un addr;

	if (argc < 2)
		return EXIT_FAILURE;

	fd = FUNC4(PF_LOCAL, SOCK_STREAM, 0);
	if (fd == -1) {
		FUNC6("socket");
		return EXIT_FAILURE;
	}

#ifdef	__FreeBSD__
	memset(&addr, 0, sizeof(addr));
#endif
	(void)FUNC5(addr.sun_path, argv[1], sizeof(addr.sun_path));
	addr.sun_family = PF_UNIX;
#ifdef	__FreeBSD__
	error = bind(fd, (struct sockaddr *)&addr, SUN_LEN(&addr));
#else
	error = FUNC1(fd, (struct sockaddr *)&addr, sizeof(addr));
#endif
	if (error == -1) {
		FUNC6("connect");
#ifdef	__FreeBSD__
		(void)close(fd);
#endif
		return EXIT_FAILURE;
	}

	FUNC2(fd);

	return EXIT_SUCCESS;
}