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
typedef  int /*<<< orphan*/  sockaddr_u ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IN_CLASSB_NET ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IN_CLASSC_NET ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 

sockaddr_u *
FUNC13(
	sockaddr_u *hostaddr
	)
{
	static sockaddr_u	netofbuf[8];
	static int		next_netofbuf;
	u_int32			netnum;
	sockaddr_u *		netaddr;

	netaddr = &netofbuf[next_netofbuf];
	next_netofbuf = (next_netofbuf + 1) % FUNC1(netofbuf);

	FUNC10(netaddr, hostaddr, sizeof(*netaddr));

	if (FUNC4(netaddr)) {
		netnum = FUNC8(netaddr);

		/*
		 * We live in a modern CIDR world where the basement nets, which
		 * used to be class A, are now probably associated with each
		 * host address. So, for class-A nets, all bits are significant.
		 */
		if (FUNC3(netnum))
			netnum &= IN_CLASSC_NET;
		else if (FUNC2(netnum))
			netnum &= IN_CLASSB_NET;

		FUNC7(netaddr, netnum);

	} else if (FUNC5(netaddr))
		/* assume the typical /64 subnet size */
		FUNC12(&FUNC6(netaddr)[8], 8);
#ifdef DEBUG
	else {
		msyslog(LOG_ERR, "netof unknown AF %d", AF(netaddr));
		exit(1);
	}
#endif

	return netaddr;
}