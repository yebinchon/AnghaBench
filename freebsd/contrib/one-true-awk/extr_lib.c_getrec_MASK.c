#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char uschar ;
struct TYPE_7__ {char* sval; int tval; int /*<<< orphan*/  fval; } ;
struct TYPE_6__ {int fval; } ;

/* Variables and functions */
 scalar_t__* ARGC ; 
 int DONTFREE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char** FILENAME ; 
 int /*<<< orphan*/ * FS ; 
 int NUM ; 
 int REC ; 
 int /*<<< orphan*/ * RS ; 
 int STR ; 
 scalar_t__ argno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ donefld ; 
 int donerec ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* file ; 
 scalar_t__ firsttime ; 
 TYPE_3__** fldtab ; 
 TYPE_1__* fnrloc ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 char* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/ * infile ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 TYPE_1__* nrloc ; 
 int FUNC10 (char**,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

int FUNC14(char **pbuf, int *pbufsize, int isrecord)	/* get next input record */
{			/* note: cares whether buf == record */
	int c;
	char *buf = *pbuf;
	uschar saveb0;
	int bufsize = *pbufsize, savebufsize = bufsize;

	if (firsttime) {
		firsttime = 0;
		FUNC7();
	}
	   FUNC2( ("RS=<%s>, FS=<%s>, ARGC=%g, FILENAME=%s\n",
		*RS, *FS, *ARGC, *FILENAME) );
	if (isrecord) {
		donefld = 0;
		donerec = 1;
	}
	saveb0 = buf[0];
	buf[0] = 0;
	while (argno < *ARGC || infile == stdin) {
		   FUNC2( ("argno=%d, file=|%s|\n", argno, file) );
		if (infile == NULL) {	/* have to open a new file */
			file = FUNC6(argno);
			if (file == NULL || *file == '\0') {	/* deleted or zapped */
				argno++;
				continue;
			}
			if (FUNC9(file)) {	/* a var=value arg */
				FUNC11(file);
				argno++;
				continue;
			}
			*FILENAME = file;
			   FUNC2( ("opening file %s\n", file) );
			if (*file == '-' && *(file+1) == '\0')
				infile = stdin;
			else if ((infile = FUNC4(file, "r")) == NULL)
				FUNC0("can't open file %s", file);
			FUNC12(fnrloc, 0.0);
		}
		c = FUNC10(&buf, &bufsize, infile);
		if (c != 0 || buf[0] != '\0') {	/* normal record */
			if (isrecord) {
				if (FUNC5(fldtab[0]))
					FUNC13(fldtab[0]->sval);
				fldtab[0]->sval = buf;	/* buf == record */
				fldtab[0]->tval = REC | STR | DONTFREE;
				if (FUNC8(fldtab[0]->sval)) {
					fldtab[0]->fval = FUNC1(fldtab[0]->sval);
					fldtab[0]->tval |= NUM;
				}
			}
			FUNC12(nrloc, nrloc->fval+1);
			FUNC12(fnrloc, fnrloc->fval+1);
			*pbuf = buf;
			*pbufsize = bufsize;
			return 1;
		}
		/* EOF arrived on this file; set up next */
		if (infile != stdin)
			FUNC3(infile);
		infile = NULL;
		argno++;
	}
	buf[0] = saveb0;
	*pbuf = buf;
	*pbufsize = savebufsize;
	return 0;	/* true end of file */
}