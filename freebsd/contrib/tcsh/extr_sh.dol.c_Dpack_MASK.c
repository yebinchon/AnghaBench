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
struct Strbuf {int dummy; } ;
typedef  char eChar ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 char DEOF ; 
 int /*<<< orphan*/  DODOL ; 
 char FUNC0 (int /*<<< orphan*/ ) ; 
 char QUOTE ; 
 int QUOTES ; 
 int /*<<< orphan*/  FUNC1 (struct Strbuf*,int /*<<< orphan*/ ) ; 
 int _NL ; 
 int _QB ; 
 int _QF ; 
 int _SP ; 
 scalar_t__ FUNC2 (char,int) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 

__attribute__((used)) static int
FUNC5(struct Strbuf *wbuf)
{
    eChar c;

    for (;;) {
	c = FUNC0(DODOL);
	if (c == '\\') {
	    c = FUNC0(0);
	    if (c == DEOF) {
		FUNC4(c);
		return 1;
	    }
	    if (c == '\n')
		c = ' ';
	    else
		c |= QUOTE;
	}
	if (c == DEOF) {
	    FUNC4(c);
	    return 1;
	}
	if (FUNC2(c, _SP | _NL | _QF | _QB)) {	/* sp \t\n'"` */
	    FUNC3(c);
	    if (FUNC2(c, QUOTES))
		return 0;
	    return 1;
	}
	FUNC1(wbuf, (Char) c);
    }
}