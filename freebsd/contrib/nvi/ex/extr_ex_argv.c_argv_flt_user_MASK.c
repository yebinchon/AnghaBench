#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct passwd {int /*<<< orphan*/  pw_name; } ;
struct TYPE_8__ {char* bp; size_t len; } ;
struct TYPE_7__ {size_t argc; TYPE_3__** argv; } ;
struct TYPE_6__ {int argsoff; TYPE_3__** args; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_1__ EX_PRIVATE ;
typedef  TYPE_2__ EXCMD ;
typedef  int /*<<< orphan*/  CHAR_T ;
typedef  int /*<<< orphan*/  ARGS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,size_t) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  argv_comp ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct passwd* FUNC7 () ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 size_t FUNC11 (int /*<<< orphan*/ ) ; 
 char* FUNC12 (int /*<<< orphan*/ *,char*,size_t) ; 

__attribute__((used)) static int
FUNC13(SCR *sp, EXCMD *excp, CHAR_T *uname, size_t ulen)
{
	EX_PRIVATE *exp;
	struct passwd *pw;
	int off;
	char *np;
	size_t len, nlen;

	exp = FUNC1(sp);
	off = exp->argsoff;

	/* The input must come with a leading '~'. */
	FUNC2(sp, uname + 1, ulen - 1, np, nlen);
	if ((np = FUNC12(sp, np, nlen)) == NULL)
		return (1);

	FUNC10();
	while ((pw = FUNC7()) != NULL) {
		len = FUNC11(pw->pw_name);
		if (nlen > 0 &&
		    (nlen > len || FUNC8(np, pw->pw_name, nlen)))
			continue;

		/* Copy '~' + the matched user name. */
		FUNC0(sp, pw->pw_name, len + 1, uname, ulen);
		FUNC4(sp, ulen + 1);
		exp->args[exp->argsoff]->bp[0] = '~';
		FUNC3(exp->args[exp->argsoff]->bp + 1, uname, ulen);
		exp->args[exp->argsoff]->len = ulen;
		++exp->argsoff;
		excp->argv = exp->args;
		excp->argc = exp->argsoff;
	}
	FUNC5();
	FUNC6(np);

	FUNC9(exp->args + off, exp->argsoff - off, sizeof(ARGS *), argv_comp);
	return (0);
}