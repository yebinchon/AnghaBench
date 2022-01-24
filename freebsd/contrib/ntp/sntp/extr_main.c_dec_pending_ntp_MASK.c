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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ n_pending_ntp ; 

void FUNC4(
	const char *	name,
	sockaddr_u *	server
	)
{
	if (n_pending_ntp > 0) {
		--n_pending_ntp;
		FUNC2();
	} else {
		FUNC0(0 == n_pending_ntp);
		FUNC1(1, ("n_pending_ntp was zero before decrement for %s\n",
			  FUNC3(name, server)));
	}
}