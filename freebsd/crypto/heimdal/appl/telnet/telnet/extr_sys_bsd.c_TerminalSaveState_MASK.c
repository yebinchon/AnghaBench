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
 void* FUNC0 (char) ; 
 int /*<<< orphan*/  new_tc ; 
 int /*<<< orphan*/  old_tc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* termAytChar ; 
 void* termFlushChar ; 
 void* termLiteralNextChar ; 
 void* termRprntChar ; 
 void* termStartChar ; 
 void* termStopChar ; 
 void* termWerasChar ; 

void
FUNC2(void)
{
    FUNC1(0, &old_tc);

    new_tc = old_tc;

#ifndef	VDISCARD
    termFlushChar = FUNC0('O');
#endif
#ifndef	VWERASE
    termWerasChar = FUNC0('W');
#endif
#ifndef	VREPRINT
    termRprntChar = FUNC0('R');
#endif
#ifndef	VLNEXT
    termLiteralNextChar = FUNC0('V');
#endif
#ifndef	VSTART
    termStartChar = FUNC0('Q');
#endif
#ifndef	VSTOP
    termStopChar = FUNC0('S');
#endif
#ifndef	VSTATUS
    termAytChar = FUNC0('T');
#endif
}