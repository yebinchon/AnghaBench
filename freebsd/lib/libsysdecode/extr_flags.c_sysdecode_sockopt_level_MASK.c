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
 int SOL_SOCKET ; 
 char* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ngbtsolevel ; 
 char* FUNC1 (int) ; 

const char *
FUNC2(int level)
{
	const char *str;

	if (level == SOL_SOCKET)
		return ("SOL_SOCKET");

	/* SOL_* constants for Bluetooth sockets. */
	str = FUNC0(ngbtsolevel, level);
	if (str != NULL)
		return (str);

	/*
	 * IP and Infiniband sockets use IP protocols as levels.  Not all
	 * protocols are valid but it is simpler to just allow all of them.
	 *
	 * XXX: IPPROTO_IP == 0, but UNIX domain sockets use a level of 0
	 * for private options.
	 */
	str = FUNC1(level);
	if (str != NULL)
		return (str);

	return (NULL);
}