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
typedef  scalar_t__ off_t ;
typedef  char eChar ;
typedef  char Char ;

/* Variables and functions */
 int BUFSIZE ; 
 char CHAR_ERR ; 
 int /*<<< orphan*/  ERR_SYSTEM ; 
 scalar_t__ InputBuf ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  L_SET ; 
 int /*<<< orphan*/  SHIN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ cantell ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ editing ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ fbobp ; 
 char** fbuf ; 
 scalar_t__* fclens ; 
 scalar_t__ feobp ; 
 scalar_t__ filec ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ fseekp ; 
 scalar_t__ intty ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ windowchg ; 

__attribute__((used)) static eChar
FUNC10(void)
{
    Char ch;
    int c, off, buf;
    int numleft = 0, roomleft;

    if (cantell) {
	if (fseekp < fbobp || fseekp > feobp) {
	    fbobp = feobp = fseekp;
	    (void) FUNC4(SHIN, fseekp, L_SET);
	}
	if (fseekp == feobp) {
#ifdef WIDE_STRINGS
	    off_t bytes;
	    size_t i;

	    bytes = fbobp;
	    for (i = 0; i < (size_t)(feobp - fbobp); i++)
		bytes += fclens[i];
	    fseekp = feobp = bytes;
#endif
	    fbobp = feobp;
	    c = FUNC9(SHIN, fbuf[0], BUFSIZE, 1);
#ifdef convex
	    if (c < 0)
		stderror(ERR_SYSTEM, progname, strerror(errno));
#endif /* convex */
	    if (c <= 0)
		return CHAR_ERR;
	    feobp += c;
	}
#if !defined(WINNT_NATIVE) && !defined(__CYGWIN__)
	ch = fbuf[0][fseekp - fbobp];
	fseekp++;
#else
	do {
	    ch = fbuf[0][fseekp - fbobp];
	    fseekp++;
	} while(ch == '\r');
#endif /* !WINNT_NATIVE && !__CYGWIN__ */
	return (ch);
    }

    while (fseekp >= feobp) {
	if ((editing
#if defined(FILEC) && defined(TIOCSTI)
	    || filec
#endif /* FILEC && TIOCSTI */
	    ) && intty) {		/* then use twenex routine */
	    fseekp = feobp;		/* where else? */
#if defined(FILEC) && defined(TIOCSTI)
	    if (!editing)
		c = numleft = tenex(InputBuf, BUFSIZE);
	    else
#endif /* FILEC && TIOCSTI */
	    c = numleft = FUNC0();	/* PWP: get a line */
	    while (numleft > 0) {
		off = (int) feobp % BUFSIZE;
		buf = (int) feobp / BUFSIZE;
		FUNC1(buf);
		roomleft = BUFSIZE - off;
		if (roomleft > numleft)
		    roomleft = numleft;
		(void) FUNC5(fbuf[buf] + off, InputBuf + c - numleft,
			      roomleft * sizeof(Char));
		numleft -= roomleft;
		feobp += roomleft;
	    }
	} else {
	    off = (int) feobp % BUFSIZE;
	    buf = (int) feobp / BUFSIZE;
	    FUNC1(buf);
	    roomleft = BUFSIZE - off;
	    c = FUNC9(SHIN, fbuf[buf] + off, roomleft, 0);
	    if (c > 0)
		feobp += c;
	}
	if (c == 0 || (c < 0 && FUNC3(SHIN, errno) == -1))
	    return CHAR_ERR;
    }
#ifdef SIG_WINDOW
    if (windowchg)
	(void) check_window_size(0);	/* for window systems */
#endif /* SIG_WINDOW */
#if !defined(WINNT_NATIVE) && !defined(__CYGWIN__)
    ch = fbuf[(int) fseekp / BUFSIZE][(int) fseekp % BUFSIZE];
    fseekp++;
#else
    do {
	ch = fbuf[(int) fseekp / BUFSIZE][(int) fseekp % BUFSIZE];
	fseekp++;
    } while(ch == '\r');
#endif /* !WINNT_NATIVE && !__CYGWIN__ */
    return (ch);
}