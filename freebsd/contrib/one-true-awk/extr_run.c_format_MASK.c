#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uschar ;
struct TYPE_4__ {struct TYPE_4__* nnext; } ;
typedef  TYPE_1__ Node ;
typedef  int /*<<< orphan*/  Cell ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int MAXNUMSIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char**,int*,...) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 
 int recsize ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,...) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(char **pbuf, int *pbufsize, const char *s, Node *a)	/* printf-like conversions */
{
	char *fmt;
	char *p, *t;
	const char *os;
	Cell *x;
	int flag = 0, n;
	int fmtwd; /* format width */
	int fmtsz = recsize;
	char *buf = *pbuf;
	int bufsize = *pbufsize;

	static int first = 1;
	static int have_a_format = 0;

	if (first) {
		char buf[100];

		FUNC11(buf, "%a", 42.0);
		have_a_format = (FUNC12(buf, "0x1.5p+5") == 0);
		first = 0;
	}

	os = s;
	p = buf;
	if ((fmt = (char *) FUNC10(fmtsz)) == NULL)
		FUNC0("out of memory in format()");
	while (*s) {
		FUNC2(&buf, &bufsize, MAXNUMSIZE+1+p-buf, recsize, &p, "format1");
		if (*s != '%') {
			*p++ = *s++;
			continue;
		}
		if (*(s+1) == '%') {
			*p++ = '%';
			s += 2;
			continue;
		}
		/* have to be real careful in case this is a huge number, eg, %100000d */
		fmtwd = FUNC3(s+1);
		if (fmtwd < 0)
			fmtwd = -fmtwd;
		FUNC2(&buf, &bufsize, fmtwd+1+p-buf, recsize, &p, "format2");
		for (t = fmt; (*t++ = *s) != '\0'; s++) {
			if (!FUNC2(&fmt, &fmtsz, MAXNUMSIZE+1+t-fmt, recsize, &t, "format3"))
				FUNC0("format item %.30s... ran format() out of memory", os);
			if (FUNC8((uschar)*s) && *s != 'l' && *s != 'h' && *s != 'L')
				break;	/* the ansi panoply */
			if (*s == '$') {
				FUNC0("'$' not permitted in awk formats");
			}
			if (*s == '*') {
				if (a == NULL) {
					FUNC0("not enough args in printf(%s)", os);
				}
				x = FUNC4(a);
				a = a->nnext;
				FUNC11(t-1, "%d", fmtwd=(int) FUNC6(x));
				if (fmtwd < 0)
					fmtwd = -fmtwd;
				FUNC2(&buf, &bufsize, fmtwd+1+p-buf, recsize, &p, "format");
				t = fmt + FUNC13(fmt);
				FUNC14(x);
			}
		}
		*t = '\0';
		if (fmtwd < 0)
			fmtwd = -fmtwd;
		FUNC2(&buf, &bufsize, fmtwd+1+p-buf, recsize, &p, "format4");
		switch (*s) {
		case 'a': case 'A':
			if (have_a_format)
				flag = *s;
			else
				flag = 'f';
			break;
		case 'f': case 'e': case 'g': case 'E': case 'G':
			flag = 'f';
			break;
		case 'd': case 'i':
			flag = 'd';
			if(*(s-1) == 'l') break;
			*(t-1) = 'l';
			*t = 'd';
			*++t = '\0';
			break;
		case 'o': case 'x': case 'X': case 'u':
			flag = *(s-1) == 'l' ? 'd' : 'u';
			break;
		case 's':
			flag = 's';
			break;
		case 'c':
			flag = 'c';
			break;
		default:
			FUNC1("weird printf conversion %s", fmt);
			flag = '?';
			break;
		}
		if (a == NULL)
			FUNC0("not enough args in printf(%s)", os);
		x = FUNC4(a);
		a = a->nnext;
		n = MAXNUMSIZE;
		if (fmtwd > n)
			n = fmtwd;
		FUNC2(&buf, &bufsize, 1+n+p-buf, recsize, &p, "format5");
		switch (flag) {
		case '?':	FUNC11(p, "%s", fmt);	/* unknown, so dump it too */
			t = FUNC7(x);
			n = FUNC13(t);
			if (fmtwd > n)
				n = fmtwd;
			FUNC2(&buf, &bufsize, 1+FUNC13(p)+n+p-buf, recsize, &p, "format6");
			p += FUNC13(p);
			FUNC11(p, "%s", t);
			break;
		case 'a':
		case 'A':
		case 'f':	FUNC11(p, fmt, FUNC6(x)); break;
		case 'd':	FUNC11(p, fmt, (long) FUNC6(x)); break;
		case 'u':	FUNC11(p, fmt, (int) FUNC6(x)); break;
		case 's':
			t = FUNC7(x);
			n = FUNC13(t);
			if (fmtwd > n)
				n = fmtwd;
			if (!FUNC2(&buf, &bufsize, 1+n+p-buf, recsize, &p, "format7"))
				FUNC0("huge string/format (%d chars) in printf %.30s... ran format() out of memory", n, t);
			FUNC11(p, fmt, t);
			break;
		case 'c':
			if (FUNC9(x)) {
				if ((int)FUNC6(x))
					FUNC11(p, fmt, (int) FUNC6(x));
				else {
					*p++ = '\0'; /* explicit null byte */
					*p = '\0';   /* next output will start here */
				}
			} else
				FUNC11(p, fmt, FUNC7(x)[0]);
			break;
		default:
			FUNC0("can't happen: bad conversion %c in format()", flag);
		}
		FUNC14(x);
		p += FUNC13(p);
		s++;
	}
	*p = '\0';
	FUNC5(fmt);
	for ( ; a; a = a->nnext)		/* evaluate any remaining args */
		FUNC4(a);
	*pbuf = buf;
	*pbufsize = bufsize;
	return p - buf;
}