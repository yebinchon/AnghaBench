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
struct rt_msghdr {int /*<<< orphan*/  rtm_msglen; } ;

/* Variables and functions */
 int AF_UNSPEC ; 
 int CTL_NET ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int NET_RT_IFLIST ; 
 int PF_ROUTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (struct rt_msghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int*,int /*<<< orphan*/ ,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9(void)
{
	size_t needed;
	int mib[6];
	char *buf, *lim, *next, count = 0;
	struct rt_msghdr *rtm;

retry2:
	mib[0] = CTL_NET;
	mib[1] = PF_ROUTE;
	mib[2] = 0;		/* protocol */
	mib[3] = AF_UNSPEC;
	mib[4] = NET_RT_IFLIST;
	mib[5] = 0;		/* no flags */
	if (FUNC7(mib, FUNC4(mib), NULL, &needed, NULL, 0) < 0)
		FUNC0(EX_OSERR, "route-sysctl-estimate");
	if ((buf = FUNC3(needed)) == NULL)
		FUNC1(EX_OSERR, "malloc failed");
	if (FUNC7(mib, FUNC4(mib), buf, &needed, NULL, 0) < 0) {
		if (errno == ENOMEM && count++ < 10) {
			FUNC8("Routing table grew, retrying");
			FUNC6(1);
			FUNC2(buf);
			goto retry2;
		}
		FUNC0(EX_OSERR, "actual retrieval of interface table");
	}
	lim = buf + needed;
	for (next = buf; next < lim; next += rtm->rtm_msglen) {
		rtm = (struct rt_msghdr *)(void *)next;
		FUNC5(rtm, rtm->rtm_msglen);
	}
	FUNC2(buf);
}