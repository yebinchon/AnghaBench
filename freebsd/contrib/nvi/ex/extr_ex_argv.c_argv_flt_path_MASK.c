#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct dirent {char* d_name; size_t d_namlen; } ;
struct TYPE_9__ {char* bp; size_t len; } ;
struct TYPE_8__ {size_t argc; TYPE_3__** argv; } ;
struct TYPE_7__ {int argsoff; TYPE_3__** args; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_1__ EX_PRIVATE ;
typedef  TYPE_2__ EXCMD ;
typedef  int /*<<< orphan*/  DIR ;
typedef  char CHAR_T ;
typedef  int /*<<< orphan*/  ARGS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t,char*,size_t) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t,char*,size_t) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 size_t FUNC5 (char*) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  argv_comp ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__**,int,int,int /*<<< orphan*/ ) ; 
 struct dirent* FUNC15 (int /*<<< orphan*/ *) ; 
 char* FUNC16 (int /*<<< orphan*/ *,char*,size_t) ; 
 char* FUNC17 (int /*<<< orphan*/ *,char*,size_t) ; 

int
FUNC18(SCR *sp, EXCMD *excp, CHAR_T *path, size_t plen)
{
	struct dirent *dp;
	DIR *dirp;
	EX_PRIVATE *exp;
	int off;
	size_t dlen, len, nlen;
	CHAR_T *dname;
	CHAR_T *p, *np, *n;
	char *name, *tp, *epd = NULL;
	CHAR_T *wp;
	size_t wlen;

	exp = FUNC1(sp);

	/* Set up the name and length for comparison. */
	if ((path = FUNC17(sp, path, plen)) == NULL)
		return (1);
	if ((p = FUNC6(path, '/')) == NULL) {
		if (*path == '~') {
			int rc;
			
			/* Filter ~user list instead. */
			rc = FUNC8(sp, excp, path, plen);
			FUNC11(path);
			return (rc);
		}
		dname = FUNC3(".");
		dlen = 0;
		np = path;
	} else {
		if (p == path) {
			dname = FUNC3("/");
			dlen = 1;
		} else {
			*p = '\0';
			dname = path;
			dlen = p - path;
		}
		np = p + 1;
	}

	FUNC2(sp, dname, dlen + 1, tp, nlen);
	if ((epd = FUNC10(tp)) != NULL)
		tp = epd;
	if ((dirp = FUNC13(tp)) == NULL) {
		FUNC11(epd);
		FUNC11(path);
		return (1);
	}
	FUNC11(epd);

	FUNC2(sp, np, FUNC5(np), tp, nlen);
	if ((name = FUNC16(sp, tp, nlen)) == NULL) {
		FUNC11(path);
		return (1);
	}

	for (off = exp->argsoff; (dp = FUNC15(dirp)) != NULL;) {
		if (nlen == 0) {
			if (dp->d_name[0] == '.')
				continue;
			len = dp->d_namlen;
		} else {
			len = dp->d_namlen;
			if (len < nlen || FUNC12(dp->d_name, name, nlen))
				continue;
		}

		/* Directory + name + slash + null. */
		FUNC0(sp, dp->d_name, len + 1, wp, wlen);
		FUNC7(sp, dlen + wlen + 1);
		n = exp->args[exp->argsoff]->bp;
		if (dlen != 0) {
			FUNC4(n, dname, dlen);
			n += dlen;
			if (dlen > 1 || dname[0] != '/')
				*n++ = '/';
			exp->args[exp->argsoff]->len = dlen + 1;
		}
		FUNC4(n, wp, wlen);
		exp->args[exp->argsoff]->len += wlen - 1;
		++exp->argsoff;
		excp->argv = exp->args;
		excp->argc = exp->argsoff;
	}
	FUNC9(dirp);
	FUNC11(name);
	FUNC11(path);

	FUNC14(exp->args + off, exp->argsoff - off, sizeof(ARGS *), argv_comp);
	return (0);
}