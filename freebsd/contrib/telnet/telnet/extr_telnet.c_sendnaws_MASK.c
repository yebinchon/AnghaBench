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
 void* IAC ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,long) ; 
 int /*<<< orphan*/  SB ; 
 int /*<<< orphan*/  SE ; 
 int /*<<< orphan*/  TELOPT_NAWS ; 
 scalar_t__ FUNC2 (long*,long*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netoring ; 
 int /*<<< orphan*/  FUNC4 (char,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,int) ; 

void
FUNC6(void)
{
    long rows, cols;
    unsigned char tmp[16];
    unsigned char *cp;

    if (FUNC3(TELOPT_NAWS))
	return;

#define	PUTSHORT(cp, x) { if ((*cp++ = ((x)>>8)&0xff) == IAC) *cp++ = IAC; \
			    if ((*cp++ = ((x))&0xff) == IAC) *cp++ = IAC; }

    if (FUNC2(&rows, &cols) == 0) {	/* Failed */
	return;
    }

    cp = tmp;

    *cp++ = IAC;
    *cp++ = SB;
    *cp++ = TELOPT_NAWS;
    PUTSHORT(cp, cols);
    PUTSHORT(cp, rows);
    *cp++ = IAC;
    *cp++ = SE;
    if (FUNC0() >= cp - tmp) {
	FUNC5(&netoring, tmp, cp-tmp);
	FUNC4('>', tmp+2, cp - tmp - 2);
    }
}