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
typedef  int /*<<< orphan*/  sockaddr_u ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ LIB_BUFLENGTH ; 
 char const* FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

const char *
FUNC1(
	sockaddr_u *netnum
	)
{
	return FUNC0(netnum, LIB_BUFLENGTH - 1, FALSE);
}