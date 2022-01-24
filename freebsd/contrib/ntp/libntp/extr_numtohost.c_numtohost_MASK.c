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
typedef  int /*<<< orphan*/  u_int32 ;
struct hostent {int /*<<< orphan*/  h_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  LIB_BUFLENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int LOOPBACKHOST ; 
 int LOOPBACKNET ; 
 int LOOPBACKNETMASK ; 
 struct hostent* FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

char *
FUNC5(
	u_int32 netnum
	)
{
	char *bp;
	struct hostent *hp;

	/*
	 * This is really gross, but saves lots of hanging looking for
	 * hostnames for the radio clocks.  Don't bother looking up
	 * addresses on the loopback network except for the loopback
	 * host itself.
	 */
	if ((((FUNC2(netnum) & LOOPBACKNETMASK) == LOOPBACKNET)
	     && (FUNC2(netnum) != LOOPBACKHOST))
	    || ((hp = FUNC1((char *)&netnum, sizeof netnum, AF_INET))
		== 0))
	    return FUNC3(netnum);
	
	FUNC0(bp);
	FUNC4(bp, hp->h_name, LIB_BUFLENGTH);

	return bp;
}