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
typedef  int /*<<< orphan*/  o ;
typedef  int /*<<< orphan*/  i ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 int FUNC5 (int,char**,char*) ; 
 int FUNC6 () ; 
 int FUNC7 (char*,int,int) ; 
 char* optarg ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int*) ; 
 int FUNC15 (int,char*,int) ; 

int
FUNC16(int argc, char *argv[])
{
	int s[2], fd, status, c, verbose;
	char buf[1024], *prog;

	prog = NULL;
	s[0] = s[1] = -1;
	verbose = 0;

	while ((c = FUNC5(argc, argv, "di:o:p:")) != -1)
		switch (c) {
		case 'd':
			debug++;
			break;
		case 'i':
			s[0] = FUNC0(optarg);
			break;
		case 'o':
			s[1] = FUNC0(optarg);
			break;
		case 'p':
			prog = optarg;
			break;
		default:
			FUNC13();
		}

	if ((s[0] == -1 && s[1] != -1) || (s[0] != -1 && s[1] == -1))
		FUNC13();

	if (s[0] == -1) {
		if (FUNC11(AF_LOCAL, SOCK_DGRAM, 0, s) == -1)
			FUNC2(1, "socketpair");
	} else
		goto recv;

	switch (FUNC4()) {
	case -1:
		FUNC2(1, "fork");
	default:
		fd = FUNC7("foo", O_RDWR|O_CREAT|O_TRUNC, 0666);
		if (fd == -1)
			FUNC2(1, "open");
		FUNC9(s[0], fd);
		FUNC14(&status);
		return 0;
	case 0:
		if (prog != NULL) {
			char i[64], o[64];
			FUNC10(i, sizeof(i), "%d", s[0]);
			FUNC10(o, sizeof(o), "%d", s[1]);
			FUNC3(prog, prog, "-i", i, "-o", o, NULL);
			FUNC2(1, "execlp");
		}
	recv:
		fd = FUNC8(s[1]);
		if (verbose) {
			FUNC10(buf, sizeof(buf), "ls -l /proc/%d/fd",
			    FUNC6());
			FUNC12(buf);
		}
		if (FUNC15(fd, "foo\n", 4) == -1)
			FUNC2(1, "write");
		FUNC1(fd);
		return 0;
	}
}