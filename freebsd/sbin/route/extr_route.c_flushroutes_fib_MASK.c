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
struct sockaddr {scalar_t__ sa_family; } ;
struct rt_msghdr {int rtm_msglen; int rtm_flags; int rtm_seq; int /*<<< orphan*/  rtm_type; } ;

/* Variables and functions */
 int AF_UNSPEC ; 
 int CTL_NET ; 
 scalar_t__ ENOMEM ; 
 scalar_t__ EPERM ; 
 int EX_OSERR ; 
 int NET_RT_DUMP ; 
 int PF_ROUTE ; 
 int RTF_GATEWAY ; 
 int RTF_HOST ; 
 int /*<<< orphan*/  RTM_DELETE ; 
 int FUNC0 (struct sockaddr*) ; 
 scalar_t__ af ; 
 scalar_t__ debugonly ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (size_t) ; 
 char* FUNC5 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (struct rt_msghdr*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ qflag ; 
 char* FUNC9 (struct sockaddr*) ; 
 int /*<<< orphan*/  s ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (int*,int /*<<< orphan*/ ,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int FUNC15 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC16(int fib)
{
	struct rt_msghdr *rtm;
	size_t needed;
	char *buf, *next, *lim;
	int mib[7], rlen, seqno, count = 0;
	int error;

	error = FUNC10(fib);
	if (error) {
		FUNC13("fib number %d is ignored", fib);
		return (error);
	}

retry:
	mib[0] = CTL_NET;
	mib[1] = PF_ROUTE;
	mib[2] = 0;		/* protocol */
	mib[3] = AF_UNSPEC;
	mib[4] = NET_RT_DUMP;
	mib[5] = 0;		/* no flags */
	mib[6] = fib;
	if (FUNC12(mib, FUNC6(mib), NULL, &needed, NULL, 0) < 0)
		FUNC1(EX_OSERR, "route-sysctl-estimate");
	if ((buf = FUNC4(needed)) == NULL)
		FUNC2(EX_OSERR, "malloc failed");
	if (FUNC12(mib, FUNC6(mib), buf, &needed, NULL, 0) < 0) {
		if (errno == ENOMEM && count++ < 10) {
			FUNC14("Routing table grew, retrying");
			FUNC11(1);
			FUNC3(buf);
			goto retry;
		}
		FUNC1(EX_OSERR, "route-sysctl-get");
	}
	lim = buf + needed;
	if (verbose)
		(void)FUNC8("Examining routing table from sysctl\n");
	seqno = 0;		/* ??? */
	for (next = buf; next < lim; next += rtm->rtm_msglen) {
		rtm = (struct rt_msghdr *)(void *)next;
		if (verbose)
			FUNC7(rtm, rtm->rtm_msglen);
		if ((rtm->rtm_flags & RTF_GATEWAY) == 0)
			continue;
		if (af != 0) {
			struct sockaddr *sa = (struct sockaddr *)(rtm + 1);

			if (sa->sa_family != af)
				continue;
		}
		if (debugonly)
			continue;
		rtm->rtm_type = RTM_DELETE;
		rtm->rtm_seq = seqno;
		rlen = FUNC15(s, next, rtm->rtm_msglen);
		if (rlen < 0 && errno == EPERM)
			FUNC1(1, "write to routing socket");
		if (rlen < (int)rtm->rtm_msglen) {
			FUNC13("write to routing socket");
			(void)FUNC8("got only %d for rlen\n", rlen);
			FUNC3(buf);
			goto retry;
			break;
		}
		seqno++;
		if (qflag)
			continue;
		if (verbose)
			FUNC7(rtm, rlen);
		else {
			struct sockaddr *sa = (struct sockaddr *)(rtm + 1);

			FUNC8("%-20.20s ", rtm->rtm_flags & RTF_HOST ?
			    FUNC9(sa) : FUNC5(sa));
			sa = (struct sockaddr *)(FUNC0(sa) + (char *)sa);
			FUNC8("%-20.20s ", FUNC9(sa));
			if (fib >= 0)
				FUNC8("-fib %-3d ", fib);
			FUNC8("done\n");
		}
	}
	FUNC3(buf);
	return (error);
}