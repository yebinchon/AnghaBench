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
typedef  int /*<<< orphan*/  const ucl_object_t ;
struct ucl_parser {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 unsigned char* FUNC10 (unsigned char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC12 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 (struct ucl_parser*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ucl_parser*) ; 
 char* FUNC16 (struct ucl_parser*) ; 
 int /*<<< orphan*/  const* FUNC17 (struct ucl_parser*) ; 
 struct ucl_parser* FUNC18 (int /*<<< orphan*/ ) ; 

int
FUNC19(int argc, char **argv)
{
	const char *fn = NULL;
	unsigned char *inbuf;
	struct ucl_parser *parser;
	int k, ret = 0, r = 0;
	ssize_t bufsize;
	ucl_object_t *obj = NULL;
	const ucl_object_t *par;
	FILE *in;

	if (argc > 1) {
		fn = argv[1];
	}

	if (fn != NULL) {
		in = FUNC4 (fn, "r");
		if (in == NULL) {
			FUNC0 (-errno);
		}
	}
	else {
		in = stdin;
	}

	parser = FUNC18 (0);
	inbuf = FUNC7 (BUFSIZ);
	bufsize = BUFSIZ;
	r = 0;

	while (!FUNC2 (in) && !FUNC3 (in)) {
		if (r == bufsize) {
			inbuf = FUNC10 (inbuf, bufsize * 2);
			bufsize *= 2;
			if (inbuf == NULL) {
				FUNC8 ("realloc");
				FUNC0 (EXIT_FAILURE);
			}
		}
		r += FUNC6 (inbuf + r, 1, bufsize - r, in);
	}

	if (FUNC3 (in)) {
		FUNC5 (stderr, "Failed to read the input file.\n");
		FUNC0 (EXIT_FAILURE);
	}

	FUNC14 (parser, inbuf, r);
	FUNC1 (in);
	if (FUNC16(parser)) {
		FUNC9 ("Error occured: %s\n", FUNC16(parser));
		ret = 1;
		goto end;
	}

	obj = FUNC17 (parser);
	if (FUNC16 (parser)) {
		FUNC9 ("Error occured: %s\n", FUNC16(parser));
		ret = 1;
		goto end;
	}

	if (argc > 2) {
		for (k = 2; k < argc; k++) {
			FUNC9 ("search for \"%s\"... ", argv[k]);
			par = FUNC12 (obj, argv[k]);
			FUNC9 ("%sfound\n", (par == NULL )?"not ":"");
			FUNC11 (par, 0);
		}
	}
	else {
		FUNC11 (obj, 0);
	}

end:
	if (parser != NULL) {
		FUNC15 (parser);
	}
	if (obj != NULL) {
		FUNC13 (obj);
	}

	return ret;
}