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
 int /*<<< orphan*/  FUNC1 (int) ; 

void
FUNC2(char *buf, int n)
{
    int c;
    char *lp;

    for (lp = buf;;) {
	c = FUNC0();
	if (c == -1)
		break;
	switch (c & 0177) {
	case '\n':
	case '\r':
	    *lp = '\0';
	    FUNC1('\n');
	    return;
	case '\b':
	case '\177':
	    if (lp > buf) {
		lp--;
		FUNC1('\b');
		FUNC1(' ');
		FUNC1('\b');
	    }
	    break;
	case 'r'&037: {
	    char *p;

	    FUNC1('\n');
	    for (p = buf; p < lp; ++p)
		FUNC1(*p);
	    break;
	}
	case 'u'&037:
	case 'w'&037:
	    lp = buf;
	    FUNC1('\n');
	    break;
	default:
	    if ((n < 1) || ((lp - buf) < n - 1)) {
		*lp++ = c;
		FUNC1(c);
	    }
	}
    }
    /*NOTREACHED*/
}