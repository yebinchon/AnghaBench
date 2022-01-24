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
 int /*<<< orphan*/  SB ; 
 int /*<<< orphan*/  SE ; 
 int /*<<< orphan*/  TELOPT_STATUS ; 
 int /*<<< orphan*/  TELQUAL_SEND ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netoring ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  want_status_response ; 

int
FUNC5()
{
    unsigned char tmp[16];
    unsigned char *cp;

    if (FUNC1(TELOPT_STATUS)) {
	FUNC2("Remote side does not support STATUS option\n");
	return 0;
    }
    cp = tmp;

    *cp++ = IAC;
    *cp++ = SB;
    *cp++ = TELOPT_STATUS;
    *cp++ = TELQUAL_SEND;
    *cp++ = IAC;
    *cp++ = SE;
    if (FUNC0() >= cp - tmp) {
	FUNC4(&netoring, tmp, cp-tmp);
	FUNC3('>', tmp+2, cp - tmp - 2);
    }
    ++want_status_response;
    return 1;
}