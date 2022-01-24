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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int MAXARG ; 
 int /*<<< orphan*/  WHITESP ; 
 int /*<<< orphan*/  FUNC0 (int,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 size_t FUNC6 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (char*) ; 
 size_t FUNC8 (char*,int /*<<< orphan*/ ) ; 

void
FUNC9(char *filename)
{
	char    buf[BUFSIZ];
	FILE*	f;

	if ((f = FUNC4(filename, "r")) == NULL)
		FUNC1(EX_UNAVAILABLE, "fopen: %s", filename);

#define WHITESP		" \t"
#define MAXARG	 	2
	while (FUNC3(buf, BUFSIZ, f)) {
		int argc = 0;
		char *argv[MAXARG];
		size_t spn;

		spn = FUNC7(buf);
		if (buf[spn-1] == '\n')
			buf[spn-1] = '\0';

		spn = FUNC8(buf, WHITESP);
		argv[0] = buf + spn;
		if (*argv[0] == '#' || *argv[0] == '\0')
			continue;
		argc++;

		spn = FUNC6(argv[0], WHITESP);
		argv[1] = argv[0] + spn + FUNC8(argv[0] + spn, WHITESP);
		argv[0][spn] = '\0';
		if (*argv[1] != '\0')
			argc++;

#ifdef DEBUG
		{
			int i;
			printf("argc = %d\n", argc);
			for (i = 0; i < argc; i++) {
				printf("arg[%d] = %s\n", i, argv[i]);
			}
		}
#endif
		FUNC0(argc, argv);
	}
	FUNC2(f);
}