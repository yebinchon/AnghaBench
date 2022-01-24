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
typedef  char Char ;

/* Variables and functions */
 char CHAR ; 
 scalar_t__* CurrentKeyMap ; 
 int /*<<< orphan*/  ERR_SYSTEM ; 
 scalar_t__ F_XKEY ; 
 unsigned char INVALID_BYTE ; 
 scalar_t__** KeyMacro ; 
 int /*<<< orphan*/  FUNC0 () ; 
 size_t MB_CUR_MAX ; 
 int MB_LEN_MAX ; 
 size_t MacroLvl ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  SHIN ; 
 char __nt_vcode ; 
 int __nt_want_vcode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ haveungetchar ; 
 int FUNC4 (char*,char*,size_t) ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char ungetchar ; 
 scalar_t__ windowchg ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC9(Char *cp)
{
    int num_read;
    int     tried = 0;
    char cbuf[MB_LEN_MAX];
    size_t cbp;

    if (haveungetchar) {
	haveungetchar = 0;
	*cp = ungetchar;
	return 1;
    }
    for (;;) {
	if (MacroLvl < 0) {
	    if (!FUNC0())
		break;
	}
	if (*KeyMacro[MacroLvl] == 0) {
	    MacroLvl--;
	    continue;
	}
	*cp = *KeyMacro[MacroLvl]++ & CHAR;
	if (*KeyMacro[MacroLvl] == 0) {	/* Needed for QuoteMode On */
	    MacroLvl--;
	}
	return (1);
    }

    if (FUNC1() < 0)		/* make sure the tty is set up correctly */
	return 0;		/* oops: SHIN was closed */

#ifdef WINNT_NATIVE
    __nt_want_vcode = 1;
#endif /* WINNT_NATIVE */
#ifdef SIG_WINDOW
    if (windowchg)
	(void) check_window_size(0);	/* for window systems */
#endif /* SIG_WINDOW */
    cbp = 0;
    for (;;) {
	while ((num_read = FUNC8(SHIN, cbuf + cbp, 1)) == -1) {
	    if (!tried && FUNC3(SHIN, errno) != -1)
		tried = 1;
	    else {
# ifdef convex
		/* need to print error message in case the file is migrated */
		stderror(ERR_SYSTEM, progname, strerror(errno));
# endif  /* convex */
# ifdef WINNT_NATIVE
		__nt_want_vcode = 0;
# endif /* WINNT_NATIVE */
		*cp = '\0'; /* Loses possible partial character */
		return -1;
	    }
	}
	if (cbp == 0 /* && *cbuf < NT_NUM_KEYS */
	    && CurrentKeyMap[(unsigned char)*cbuf] == F_XKEY) {
	    *cp = (unsigned char)*cbuf;
	} else {
	    cbp++;
	    if (FUNC4(cp, cbuf, cbp) == -1) {
		FUNC5();
		if (cbp < MB_CUR_MAX)
		    continue; /* Maybe a partial character */
		/* And drop the following bytes, if any */
		*cp = (unsigned char)*cbuf | INVALID_BYTE;
	    }
	}
	break;
    }
#ifdef WINNT_NATIVE
    /* This is the part that doesn't work with WIDE_STRINGS */
    if (__nt_want_vcode == 2)
	*cp = __nt_vcode;
    __nt_want_vcode = 0;
#endif /* WINNT_NATIVE */
    return num_read;
}