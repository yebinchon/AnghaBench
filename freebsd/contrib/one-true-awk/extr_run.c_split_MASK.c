#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uschar ;
struct TYPE_12__ {int initstat; scalar_t__ restr; } ;
typedef  TYPE_1__ fa ;
struct TYPE_13__ {int tval; char* sval; int fval; int /*<<< orphan*/  nval; } ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_2__ Cell ;
typedef  int /*<<< orphan*/  Array ;

/* Variables and functions */
 int ARR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NSYMTAB ; 
 int NUM ; 
 int REGEXPR ; 
 int STR ; 
 int STRING ; 
 double FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 TYPE_2__* fsloc ; 
 char* FUNC7 (TYPE_2__*) ; 
 TYPE_2__* FUNC8 () ; 
 scalar_t__ FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (char*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_1__*,char*) ; 
 scalar_t__* patbeg ; 
 int patlen ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,double,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 char* FUNC17 (char*) ; 
 int FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 

Cell *FUNC20(Node **a, int nnn)	/* split(a[0], a[1], a[2]); a[3] is type */
{
	Cell *x = NULL, *y, *ap;
	char *s, *origs;
	char *fs = NULL, *origfs = NULL;
	int sep;
	char *t, temp, num[50];
	int n, tempstat, arg3type;

	y = FUNC4(a[0]);	/* source string */
	origs = s = FUNC17(FUNC7(y));
	arg3type = FUNC14(a[3]);
	if (a[2] == NULL)		/* fs string */
		fs = FUNC7(fsloc);
	else if (arg3type == STRING) {	/* split(str,arr,"string") */
		x = FUNC4(a[2]);
		origfs = fs = FUNC17(FUNC7(x));
		FUNC19(x);
	} else if (arg3type == REGEXPR)
		fs = "(regexpr)";	/* split(str,arr,/regexpr/) */
	else
		FUNC0("illegal type of split");
	sep = *fs;
	ap = FUNC4(a[1]);	/* array name */
	FUNC6(ap);
	   FUNC3( ("split: s=|%s|, a=%s, sep=|%s|\n", s, FUNC1(ap->nval), fs) );
	ap->tval &= ~STR;
	ap->tval |= ARR;
	ap->sval = (char *) FUNC12(NSYMTAB);

	n = 0;
        if (arg3type == REGEXPR && FUNC18((char*)((fa*)a[2])->restr) == 0) {
		/* split(s, a, //); have to arrange that it looks like empty sep */
		arg3type = 0;
		fs = "";
		sep = 0;
	}
	if (*s != '\0' && (FUNC18(fs) > 1 || arg3type == REGEXPR)) {	/* reg expr */
		fa *pfa;
		if (arg3type == REGEXPR) {	/* it's ready already */
			pfa = (fa *) a[2];
		} else {
			pfa = FUNC11(fs, 1);
		}
		if (FUNC13(pfa,s)) {
			tempstat = pfa->initstat;
			pfa->initstat = 2;
			do {
				n++;
				FUNC16(num, "%d", n);
				temp = *patbeg;
				*patbeg = '\0';
				if (FUNC9(s))
					FUNC15(num, s, FUNC2(s), STR|NUM, (Array *) ap->sval);
				else
					FUNC15(num, s, 0.0, STR, (Array *) ap->sval);
				*patbeg = temp;
				s = patbeg + patlen;
				if (*(patbeg+patlen-1) == 0 || *s == 0) {
					n++;
					FUNC16(num, "%d", n);
					FUNC15(num, "", 0.0, STR, (Array *) ap->sval);
					pfa->initstat = tempstat;
					goto spdone;
				}
			} while (FUNC13(pfa,s));
			pfa->initstat = tempstat; 	/* bwk: has to be here to reset */
							/* cf gsub and refldbld */
		}
		n++;
		FUNC16(num, "%d", n);
		if (FUNC9(s))
			FUNC15(num, s, FUNC2(s), STR|NUM, (Array *) ap->sval);
		else
			FUNC15(num, s, 0.0, STR, (Array *) ap->sval);
  spdone:
		pfa = NULL;
	} else if (sep == ' ') {
		for (n = 0; ; ) {
			while (*s == ' ' || *s == '\t' || *s == '\n')
				s++;
			if (*s == 0)
				break;
			n++;
			t = s;
			do
				s++;
			while (*s!=' ' && *s!='\t' && *s!='\n' && *s!='\0');
			temp = *s;
			*s = '\0';
			FUNC16(num, "%d", n);
			if (FUNC9(t))
				FUNC15(num, t, FUNC2(t), STR|NUM, (Array *) ap->sval);
			else
				FUNC15(num, t, 0.0, STR, (Array *) ap->sval);
			*s = temp;
			if (*s != 0)
				s++;
		}
	} else if (sep == 0) {	/* new: split(s, a, "") => 1 char/elem */
		for (n = 0; *s != 0; s++) {
			char buf[2];
			n++;
			FUNC16(num, "%d", n);
			buf[0] = *s;
			buf[1] = 0;
			if (FUNC10((uschar)buf[0]))
				FUNC15(num, buf, FUNC2(buf), STR|NUM, (Array *) ap->sval);
			else
				FUNC15(num, buf, 0.0, STR, (Array *) ap->sval);
		}
	} else if (*s != 0) {
		for (;;) {
			n++;
			t = s;
			while (*s != sep && *s != '\n' && *s != '\0')
				s++;
			temp = *s;
			*s = '\0';
			FUNC16(num, "%d", n);
			if (FUNC9(t))
				FUNC15(num, t, FUNC2(t), STR|NUM, (Array *) ap->sval);
			else
				FUNC15(num, t, 0.0, STR, (Array *) ap->sval);
			*s = temp;
			if (*s++ == 0)
				break;
		}
	}
	FUNC19(ap);
	FUNC19(y);
	FUNC5(origs);
	FUNC5(origfs);
	x = FUNC8();
	x->tval = NUM;
	x->fval = n;
	return(x);
}