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
struct xx {int token; char* name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FIRSTTOKEN ; 
 int LASTTOKEN ; 
 int SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 char** names ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 struct xx* proc ; 
 int FUNC6 (char*,char*,char*,char*,char*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 char** table ; 

int FUNC10(int argc, char *argv[])
{
	const struct xx *p;
	int i, n, tok;
	char c;
	FILE *fp;
	char buf[200], name[200], def[200];

	FUNC5("#include <stdio.h>\n");
	FUNC5("#include \"awk.h\"\n");
	FUNC5("#include \"ytab.h\"\n\n");
	for (i = SIZE; --i >= 0; )
		names[i] = "";

	if (argc != 2) {
		FUNC3(stderr, "usage: maketab YTAB_H\n");
		FUNC0(1);
	}
	if ((fp = FUNC2(argv[1], "r")) == NULL) {
		FUNC3(stderr, "maketab can't open %s!\n", argv[1]);
		FUNC0(1);
	}
	FUNC5("static char *printname[%d] = {\n", SIZE);
	i = 0;
	while (FUNC1(buf, sizeof buf, fp) != NULL) {
		n = FUNC6(buf, "%1c %s %s %d", &c, def, name, &tok);
		if (c != '#' || (n != 4 && FUNC7(def,"define") != 0))	/* not a valid #define */
			continue;
		if (FUNC7(name, "YYSTYPE_IS_DECLARED") == 0)
			continue;
		if (tok < FIRSTTOKEN || tok > LASTTOKEN) {
			/* fprintf(stderr, "maketab funny token %d %s ignored\n", tok, buf); */
			continue;
		}
		names[tok-FIRSTTOKEN] = (char *) FUNC4(FUNC9(name)+1);
		FUNC8(names[tok-FIRSTTOKEN], name);
		FUNC5("\t(char *) \"%s\",\t/* %d */\n", name, tok);
		i++;
	}
	FUNC5("};\n\n");

	for (p=proc; p->token!=0; p++)
		table[p->token-FIRSTTOKEN] = p->name;
	FUNC5("\nCell *(*proctab[%d])(Node **, int) = {\n", SIZE);
	for (i=0; i<SIZE; i++)
		if (table[i]==NULL)
			FUNC5("\tnullproc,\t/* %s */\n", names[i]);
		else
			FUNC5("\t%s,\t/* %s */\n", table[i], names[i]);
	FUNC5("};\n\n");

	FUNC5("char *tokname(int n)\n");	/* print a tokname() function */
	FUNC5("{\n");
	FUNC5("	static char buf[100];\n\n");
	FUNC5("	if (n < FIRSTTOKEN || n > LASTTOKEN) {\n");
	FUNC5("		sprintf(buf, \"token %%d\", n);\n");
	FUNC5("		return buf;\n");
	FUNC5("	}\n");
	FUNC5("	return printname[n-FIRSTTOKEN];\n");
	FUNC5("}\n");
	return 0;
}