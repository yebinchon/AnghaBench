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
typedef  scalar_t__ Char ;

/* Variables and functions */
 size_t CMD_INCR ; 
 scalar_t__* STRQNULL ; 
 int /*<<< orphan*/  FUNC0 (size_t,scalar_t__*) ; 
 size_t FUNC1 (scalar_t__*) ; 
 size_t cmdlen ; 
 size_t cmdmax ; 
 size_t cmdp ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 

__attribute__((used)) static void
FUNC3(Char *cp)
{
    size_t i, len;

    /*
     * Avoid the Quoted Space alias hack! Reported by:
     * sam@john-bigboote.ICS.UCI.EDU (Sam Horrocks)
     */
    if (cp[0] == STRQNULL[0])
	cp++;

    i = FUNC1(cp);

    len = cmdlen + i + CMD_INCR;
    if (len >= cmdmax)
	FUNC2(len);
    (void) FUNC0(cmdp, cp);
    cmdp += i;
    cmdlen += i;
}