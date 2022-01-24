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
struct Strbuf {char* s; size_t len; } ;
typedef  int /*<<< orphan*/  eChar ;
typedef  char Char ;

/* Variables and functions */
 int /*<<< orphan*/  SPELL ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 struct Strbuf Strbuf_INIT ; 
 int /*<<< orphan*/  FUNC1 (struct Strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct Strbuf*,char const) ; 
 int /*<<< orphan*/  Strbuf_cleanup ; 
 int /*<<< orphan*/  FUNC3 (struct Strbuf*) ; 
 int TW_COMMAND ; 
 int /*<<< orphan*/  FUNC4 (struct Strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct Strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct Strbuf*) ; 
 int FUNC7 (struct Strbuf*,int /*<<< orphan*/ ,int,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int
FUNC9(struct Strbuf *oldname, int looking, Char *pat, eChar suf)
{
    struct Strbuf guess = Strbuf_INIT, newname = Strbuf_INIT;
    const Char *old = oldname->s;
    size_t ws;
    int    foundslash = 0;
    int     retval;

    FUNC5(&guess, Strbuf_cleanup);
    FUNC5(&newname, Strbuf_cleanup);
    for (;;) {
	while (*old == '/') {	/* skip '/' */
	    FUNC2(&newname, *old++);
	    foundslash = 1;
	}
	/* do not try to correct spelling of single letter words */
	if (*old != '\0' && old[1] == '\0')
	    FUNC2(&newname, *old++);
	FUNC3(&newname);
	if (*old == '\0') {
	    retval = (FUNC0(oldname->s, newname.s) != 0);
	    FUNC4(&newname);
	    FUNC8(oldname->s);
	    *oldname = newname; /* shove it back. */
	    FUNC6(&guess);
	    return retval;
	}
	guess.len = 0;		/* start at beginning of buf */
	FUNC1(&guess, newname.s); /* add current dir if any */
	ws = guess.len;
	for (; *old != '/' && *old != '\0'; old++)/* add current file name */
	    FUNC2(&guess, *old);
	FUNC3(&guess);

	/*
	 * Don't tell t_search we're looking for cmd if no '/' in the name so
	 * far but there are later - or it will look for *all* commands
	 */
	/* (*should* say "looking for directory" whenever '/' is next...) */
	retval = FUNC7(&guess, SPELL,
			  looking == TW_COMMAND && (foundslash || *old != '/') ?
			  TW_COMMAND : looking, 1, pat, suf);
	if (retval >= 4 || retval < 0) {
	    FUNC6(&guess);
	    return -1;		/* hopeless */
	}
	FUNC1(&newname, guess.s + ws);
    }
/*NOTREACHED*/
#ifdef notdef
    return (0);			/* lint on the vax under mtXinu complains! */
#endif
}