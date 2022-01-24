#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 char* GETSTR ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 char* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (char*,int,int) ; 
 int FUNC10 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC13 (char*) ; 
 int FUNC14 (int,char*,int) ; 

int
FUNC15(int argc, char *argv[])
{
	char buf[8192];
	struct sockaddr_in sin;
	ssize_t n;
	int s, fd;

	FUNC11(argv[0]);
	if (argc != 4) {
		FUNC3(stderr, "usage: %s address port savefile\n",
		    FUNC5());
		return EXIT_FAILURE;
	}

	s = FUNC12(PF_INET, SOCK_STREAM, 0);
	if (s == -1)
		FUNC2(EXIT_FAILURE, "socket");

	FUNC8(&sin, 0, sizeof(sin));
	sin.sin_len = sizeof(sin);
	sin.sin_family = AF_INET;
	sin.sin_port = FUNC6(FUNC0(argv[2]));
	sin.sin_addr.s_addr = FUNC7(argv[1]);

	fd = FUNC9(argv[3], O_CREAT | O_RDWR, 0644);
	if (fd == -1)
		FUNC2(EXIT_FAILURE, "open");
	if (FUNC4(fd, 0) == -1)
		FUNC2(EXIT_FAILURE, "ftruncate savefile");

	if (FUNC1(s, (struct sockaddr *)&sin, sizeof(sin)) == -1)
		FUNC2(EXIT_FAILURE, "connect");

	if (FUNC14(s, GETSTR, FUNC13(GETSTR)) != FUNC13(GETSTR))
		FUNC2(EXIT_FAILURE, "socket write");

	for (;;) {
		n = FUNC10(s, buf, sizeof(buf));
		if (n == 0)
			break;
		if (n == -1)
			FUNC2(EXIT_FAILURE, "socket read");

		if (FUNC14(fd, buf, n) != n)
			FUNC2(EXIT_FAILURE, "write file");
	}

	return EXIT_SUCCESS;
}