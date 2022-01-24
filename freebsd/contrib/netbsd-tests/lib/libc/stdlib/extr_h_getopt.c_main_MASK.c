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
typedef  int /*<<< orphan*/  arg ;

/* Variables and functions */
 int /*<<< orphan*/  WS ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 char* FUNC2 (int /*<<< orphan*/ ,size_t*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int,char**,char*) ; 
 char* optarg ; 
 int optind ; 
 int optreset ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 char* FUNC8 (char*,int) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 char* FUNC10 (char*) ; 
 size_t FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*,char*,int) ; 
 char* FUNC13 (char*,int /*<<< orphan*/ ) ; 

int
FUNC14(int argc, char *argv[])
{
	size_t len, lineno = 0;
	char *line, *ptr, *optstring = NULL, *result = NULL;
	char buf[1024];
	char *args[100];
	char arg[100];
	int nargs = -1;
	int c;

	while ((line = FUNC2(stdin, &len, &lineno, NULL, 0)) != NULL) {
		if (FUNC12(line, "load:", 5) == 0) {
			if (optstring)
				FUNC4(optstring);
			optstring = FUNC13(&line[6], WS);
			if (optstring == NULL)
			    FUNC1(1, "missing optstring at line %ld",
				(unsigned long)lineno);
			optstring = FUNC10(optstring);
			if (debug)
				FUNC3(stderr, "optstring = %s\n", optstring);
		} else if (FUNC12(line, "args:", 5) == 0) {
			for (; nargs >= 0; nargs--) {
				if (args[nargs] != NULL)
					FUNC4(args[nargs]);
			}
			args[nargs = 0] = FUNC13(&line[6], WS);
			if (args[nargs] == NULL)
				FUNC1(1, "missing args at line %ld",
				    (unsigned long)lineno);

			args[nargs] = FUNC10(args[nargs]);
			while ((args[++nargs] = FUNC13(NULL, WS)) != NULL)
				args[nargs] = FUNC10(args[nargs]);
			if (debug) {
				int i = 0;
				for (i = 0; i < nargs; i++)
					FUNC3(stderr, "argv[%d] = %s\n", i,
					    args[i]);
			}
		} else if (FUNC12(line, "result:", 7) == 0) {
			buf[0] = '\0';
			optind = optreset = 1;
			if (result)
				FUNC4(result);
			result = FUNC13(&line[8], WS);
			if (result == NULL)
				FUNC1(1, "missing result at line %ld",
				    (unsigned long)lineno);
			result = FUNC10(result);
			if (nargs == -1)
				FUNC1(1, "result: without args:");
			if (debug)
				FUNC3(stderr, "result = %s\n", result);
			while ((c = FUNC5(nargs, args, optstring)) != -1)  {
				if (c == ':')
					FUNC0(1, "`:' found as argument char");
				if ((ptr = FUNC8(optstring, c)) == NULL) {
					FUNC6(arg, sizeof(arg), "!%c,", c);
					FUNC7(buf, arg);
					continue;
				}
				if (ptr[1] != ':')
					FUNC6(arg, sizeof(arg), "%c,", c);
				else
					FUNC6(arg, sizeof(arg), "%c=%s,",
					    c, optarg);
				FUNC7(buf, arg);
			}
			len = FUNC11(buf);
			if (len > 0) {
				buf[len - 1] = '|';
				buf[len] = '\0';
			} else {
				buf[0] = '|';
				buf[1] = '\0';
			}
			FUNC6(arg, sizeof(arg), "%d", nargs - optind);
			FUNC7(buf, arg);
			if (FUNC9(buf, result) != 0)
				FUNC1(1, "`%s' != `%s'", buf, result);
		}
		FUNC4(line);
	}
	return 0;
}