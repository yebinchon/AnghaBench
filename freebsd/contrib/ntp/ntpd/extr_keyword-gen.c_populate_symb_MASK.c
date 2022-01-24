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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int MAX_TOK_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (char*,char*,char*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/ * symb ; 

void
FUNC10(
	char *header_file
	)
{
	FILE *	yh;
	char	line[2 * MAX_TOK_LEN];
	char	name[2 * MAX_TOK_LEN];
	int	token;

	yh = FUNC5(header_file, "r");
	if (NULL == yh) {
		FUNC7("unable to open yacc/bison header file");
		FUNC2(4);
	}

	while (NULL != FUNC4(line, sizeof(line), yh))
		if (2 == FUNC8(line, "#define %s %d", name, &token)
		    && 'T' == name[0] && '_' == name[1] && token >= 0
		    && token < FUNC0(symb)) {

			symb[token] = FUNC1(name);
			if (FUNC9(name) > MAX_TOK_LEN) {
				FUNC6(stderr,
					"MAX_TOK_LEN %d too small for '%s'\n"
					"Edit keyword-gen.c to raise.\n",
					MAX_TOK_LEN, name);
				FUNC2(10);
			}
		}
	FUNC3(yh);
}