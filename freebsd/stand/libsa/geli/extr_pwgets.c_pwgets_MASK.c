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

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

void
FUNC2(char *buf, int n, int hide)
{
    int c;
    char *lp;

    for (lp = buf;;)
	switch (c = FUNC0() & 0177) {
	case '\n':
	case '\r':
	    *lp = '\0';
	    FUNC1('\n');
	    return;
	case '\b':
	case '\177':
	    if (lp > buf) {
		lp--;
		if (hide == 0) {
			FUNC1('\b');
			FUNC1(' ');
			FUNC1('\b');
		}
	    }
	    break;
	case 'u'&037:
	case 'w'&037:
	    lp = buf;
	    FUNC1('\n');
	    break;
	default:
	    if ((n < 1) || ((lp - buf) < n - 1)) {
		*lp++ = c;
		if (hide == 0) {
			FUNC1('*');
		}
	    }
	}
    /*NOTREACHED*/
}