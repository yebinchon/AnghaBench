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
typedef  int /*<<< orphan*/  isc_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  ISC_FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static isc_boolean_t
FUNC4(
	sockaddr_u *maddr
	)
{
	isc_boolean_t result;

#ifndef INCLUDE_IPV6_MULTICAST_SUPPORT
	/*
	 * If we don't have IPV6 support any IPV6 addr is not multicast
	 */
	if (FUNC1(maddr))
		result = ISC_FALSE;
	else
#endif
		result = FUNC2(maddr);

	if (!result)
		FUNC0(4, ("address %s is not multicast\n",
			    FUNC3(maddr)));

	return result;
}