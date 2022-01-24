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
struct files {char* fname; int mode; int /*<<< orphan*/ * fp; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int APPEND ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FFLUSH ; 
 int FOPEN_MAX ; 
 int GT ; 
 int LE ; 
 int LT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct files* files ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct files*,int /*<<< orphan*/ ,int) ; 
 int nfiles ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 struct files* FUNC5 (struct files*,int) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 char* FUNC7 (char const*) ; 

FILE *FUNC8(int a, const char *us)
{
	const char *s = us;
	int i, m;
	FILE *fp = NULL;

	if (*s == '\0')
		FUNC0("null file name in print or getline");
	for (i=0; i < nfiles; i++)
		if (files[i].fname && FUNC6(s, files[i].fname) == 0) {
			if (a == files[i].mode || (a==APPEND && files[i].mode==GT))
				return files[i].fp;
			if (a == FFLUSH)
				return files[i].fp;
		}
	if (a == FFLUSH)	/* didn't find it, so don't create it! */
		return NULL;

	for (i=0; i < nfiles; i++)
		if (files[i].fp == NULL)
			break;
	if (i >= nfiles) {
		struct files *nf;
		int nnf = nfiles + FOPEN_MAX;
		nf = FUNC5(files, nnf * sizeof(*nf));
		if (nf == NULL)
			FUNC0("cannot grow files for %s and %d files", s, nnf);
		FUNC3(&nf[nfiles], 0, FOPEN_MAX * sizeof(*nf));
		nfiles = nnf;
		files = nf;
	}
	FUNC1(stdout);	/* force a semblance of order */
	m = a;
	if (a == GT) {
		fp = FUNC2(s, "w");
	} else if (a == APPEND) {
		fp = FUNC2(s, "a");
		m = GT;	/* so can mix > and >> */
	} else if (a == '|') {	/* output pipe */
		fp = FUNC4(s, "w");
	} else if (a == LE) {	/* input pipe */
		fp = FUNC4(s, "r");
	} else if (a == LT) {	/* getline <file */
		fp = FUNC6(s, "-") == 0 ? stdin : FUNC2(s, "r");	/* "-" is stdin */
	} else	/* can't happen */
		FUNC0("illegal redirection %d", a);
	if (fp != NULL) {
		files[i].fname = FUNC7(s);
		files[i].fp = fp;
		files[i].mode = m;
	}
	return fp;
}