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
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  AF_UNSPEC ; 
 int O_DIRECTORY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int FUNC3 () ; 
 int FUNC4 (int,char**,char*) ; 
 int FUNC5 (char*,int) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char const*,char const*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

int
FUNC10(int argc, char **argv)
{
	const char	*defos, *outtype;
	int		 srv_fds[2];
	int		 dstdir_fd;
	int		 opt;
	pid_t		 pid;

	defos = NULL;
	outtype = "ascii";
	while ((opt = FUNC4(argc, argv, "I:T:")) != -1) {
		switch (opt) {
		case 'I':
			defos = optarg;
			break;
		case 'T':
			outtype = optarg;
			break;
		default:
			FUNC9();
		}
	}

	if (argc > 0) {
		argc -= optind;
		argv += optind;
	}
	if (argc != 2)
		FUNC9();

	if (FUNC8(AF_LOCAL, SOCK_STREAM, AF_UNSPEC, srv_fds) == -1)
		FUNC2(1, "socketpair");

	pid = FUNC3();
	switch (pid) {
	case -1:
		FUNC2(1, "fork");
	case 0:
		FUNC1(srv_fds[0]);
		FUNC7(srv_fds[1], outtype, defos);
	default:
		break;
	}
	FUNC1(srv_fds[1]);

	if ((dstdir_fd = FUNC5(argv[1], O_RDONLY | O_DIRECTORY)) == -1)
		FUNC2(1, "open(%s)", argv[1]);

	if (FUNC0(argv[0]) == -1)
		FUNC2(1, "chdir(%s)", argv[0]);

	return FUNC6(srv_fds[0], dstdir_fd) == -1 ? 1 : 0;
}