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

/* Variables and functions */
 int /*<<< orphan*/  LIB_BUFLENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int,int,int,int) ; 

char *
FUNC3(
	u_int32 num
	)
{
	register u_int32 netnum;
	register char *buf;

	netnum = FUNC1(num);
	FUNC0(buf);
	FUNC2(buf, LIB_BUFLENGTH, "%lu.%lu.%lu.%lu",
		 ((u_long)netnum >> 24) & 0xff,
		 ((u_long)netnum >> 16) & 0xff,
		 ((u_long)netnum >> 8) & 0xff,
		 (u_long)netnum & 0xff);
	return buf;
}