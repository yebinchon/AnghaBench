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
struct TYPE_4__ {unsigned char* consume; } ;

/* Variables and functions */
#define  IAC 128 
 int MODE_EDIT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int const,int const) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  TELOPT_BINARY ; 
 scalar_t__ FUNC4 (int) ; 
 int _POSIX_VDISABLE ; 
 int bol ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  crlf ; 
 int dontlecho ; 
 int echoc ; 
 int /*<<< orphan*/  echotoggle ; 
 int escape ; 
 int flushline ; 
 int globalmode ; 
 scalar_t__ kludgelinemode ; 
 int local ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int FUNC8 (TYPE_1__*) ; 
 int rlogin ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (unsigned char) ; 
 int termEofChar ; 
 int termSuspChar ; 
 TYPE_1__ ttyiring ; 

__attribute__((used)) static int
FUNC12()
{
    int tcc;
    int count;
    int returnValue = 0;
    unsigned char *tbp = NULL;

    tcc = 0;
    count = 0;
    while (FUNC3() > 2) {
	int sc;
	int c;

	if (tcc == 0) {
	    if (count) {
		FUNC7(&ttyiring, count);
		returnValue = 1;
		count = 0;
	    }
	    tbp = ttyiring.consume;
	    tcc = FUNC8(&ttyiring);
	    if (tcc == 0) {
		break;
	    }
	}
	c = *tbp++ & 0xff, sc = FUNC11(c), tcc--; count++;
	if (rlogin != _POSIX_VDISABLE) {
		if (bol) {
			bol = 0;
			if (sc == rlogin) {
				local = 1;
				continue;
			}
		} else if (local) {
			local = 0;
			if (sc == '.' || c == termEofChar) {
				bol = 1;
				FUNC5(0, "close\n", 6);
				continue;
			}
			if (sc == termSuspChar) {
				bol = 1;
				FUNC5(0, "z\n", 2);
				continue;
			}
			if (sc == escape) {
				FUNC5(0, (char *)tbp, tcc);
				bol = 1;
				count += tcc;
				tcc = 0;
				flushline = 1;
				break;
			}
			if (sc != rlogin) {
				++tcc;
				--tbp;
				--count;
				c = sc = rlogin;
			}
		}
		if ((sc == '\n') || (sc == '\r'))
			bol = 1;
	} else if (sc == escape) {
	    /*
	     * Double escape is a pass through of a single escape character.
	     */
	    if (tcc && FUNC11(*tbp) == escape) {
		tbp++;
		tcc--;
		count++;
		bol = 0;
	    } else {
		FUNC5(0, (char *)tbp, tcc);
		bol = 1;
		count += tcc;
		tcc = 0;
		flushline = 1;
		break;
	    }
	} else
	    bol = 0;
#ifdef	KLUDGELINEMODE
	if (kludgelinemode && (globalmode&MODE_EDIT) && (sc == echoc)) {
	    if (tcc > 0 && strip(*tbp) == echoc) {
		tcc--; tbp++; count++;
	    } else {
		dontlecho = !dontlecho;
		settimer(echotoggle);
		setconnmode(0);
		flushline = 1;
		break;
	    }
	}
#endif
	if (FUNC0(globalmode)) {
	    if (FUNC4(sc) == 0) {
		bol = 1;
		break;
	    }
	}
	if (FUNC6(TELOPT_BINARY)) {
	    switch (c) {
	    case '\n':
		    /*
		     * If we are in CRMOD mode (\r ==> \n)
		     * on our local machine, then probably
		     * a newline (unix) is CRLF (TELNET).
		     */
		if (FUNC0(globalmode)) {
		    FUNC2('\r');
		}
		FUNC2('\n');
		bol = flushline = 1;
		break;
	    case '\r':
		if (!crlf) {
		    FUNC1('\r', '\0');
		} else {
		    FUNC1('\r', '\n');
		}
		bol = flushline = 1;
		break;
	    case IAC:
		FUNC1(IAC, IAC);
		break;
	    default:
		FUNC2(c);
		break;
	    }
	} else if (c == IAC) {
	    FUNC1(IAC, IAC);
	} else {
	    FUNC2(c);
	}
    }
    if (count)
	FUNC7(&ttyiring, count);
    return returnValue||count;		/* Non-zero if we did anything */
}