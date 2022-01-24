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
typedef  int u_long ;
typedef  scalar_t__ u_int32 ;
typedef  int /*<<< orphan*/  sockaddr_u ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LIB_BUFLENGTH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,...) ; 
 char const* FUNC5 (int /*<<< orphan*/ *) ; 

const char *
FUNC6(
	sockaddr_u *num
	)
{
	u_int32 netnum;
	char *buf;
	const char *rclock;

	if (!FUNC0(num))
		return FUNC5(num);

	FUNC1(buf);
	netnum = FUNC2(num);
	rclock = FUNC3((int)((u_long)netnum >> 8) & 0xff);

	if (rclock != NULL)
		FUNC4(buf, LIB_BUFLENGTH, "%s(%lu)",
			 rclock, (u_long)netnum & 0xff);
	else
		FUNC4(buf, LIB_BUFLENGTH, "REFCLK(%lu,%lu)",
			 ((u_long)netnum >> 8) & 0xff,
			 (u_long)netnum & 0xff);

	return buf;
}