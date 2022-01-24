#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  union ad_u {int dummy; } ad_u ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int /*<<< orphan*/  imr_ifindex; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct ip_mreqn {int sin_len; TYPE_1__ sin_addr; int /*<<< orphan*/  imr_ifindex; int /*<<< orphan*/  sin_family; } ;
struct interface {int int_if_flags; int int_state; char* int_name; int /*<<< orphan*/  int_addr; int /*<<< orphan*/  int_index; int /*<<< orphan*/  int_brdaddr; int /*<<< orphan*/  int_dstaddr; } ;
typedef  int /*<<< orphan*/  rsin ;
typedef  int /*<<< orphan*/  naddr ;
typedef  int /*<<< orphan*/  mreqn ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int IFF_POINTOPOINT ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IP_MULTICAST_IF ; 
 int IS_BROKE ; 
 int IS_DUP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MSG_DONTROUTE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct interface*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ rdisc_sock ; 
 struct interface* rdisc_sock_mcast ; 
 scalar_t__ FUNC6 (scalar_t__,union ad_u*,int,int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct interface*,union ad_u*,int) ; 

__attribute__((used)) static void
FUNC11(union ad_u *p,
	   int p_size,
	   struct interface *ifp,
	   naddr dst,			/* 0 or unicast destination */
	   int	type)			/* 0=unicast, 1=bcast, 2=mcast */
{
	struct sockaddr_in rsin;
	int flags;
	const char *msg;


	FUNC4(&rsin, 0, sizeof(rsin));
	rsin.sin_addr.s_addr = dst;
	rsin.sin_family = AF_INET;
#ifdef _HAVE_SIN_LEN
	rsin.sin_len = sizeof(rsin);
#endif
	flags = MSG_DONTROUTE;

	switch (type) {
	case 0:				/* unicast */
	default:
		msg = "Send";
		break;

	case 1:				/* broadcast */
		if (ifp->int_if_flags & IFF_POINTOPOINT) {
			msg = "Send pt-to-pt";
			rsin.sin_addr.s_addr = ifp->int_dstaddr;
		} else {
			msg = "Send broadcast";
			rsin.sin_addr.s_addr = ifp->int_brdaddr;
		}
		break;

	case 2:				/* multicast */
		msg = "Send multicast";
		if (ifp->int_state & IS_DUP) {
			FUNC9("abort multicast output via %s"
				  " with duplicate address",
				  ifp->int_name);
			return;
		}
		if (rdisc_sock_mcast != ifp) {
			/* select the right interface. */
			struct ip_mreqn mreqn;

			FUNC4(&mreqn, 0, sizeof(struct ip_mreqn));
			mreqn.imr_ifindex = ifp->int_index;
			if (0 > FUNC7(rdisc_sock,
					   IPPROTO_IP, IP_MULTICAST_IF,
					   &mreqn,
					   sizeof(mreqn))) {
				FUNC0("setsockopt(rdisc_sock,"
				       "IP_MULTICAST_IF)");
				rdisc_sock_mcast = NULL;
				return;
			}
			rdisc_sock_mcast = ifp;
		}
		flags = 0;
		break;
	}

	if (rdisc_sock < 0)
		FUNC1();

	FUNC10(msg, (ifp ? ifp->int_addr : 0), rsin.sin_addr.s_addr, ifp,
		    p, p_size);

	if (0 > FUNC6(rdisc_sock, p, p_size, flags,
		       (struct sockaddr *)&rsin, sizeof(rsin))) {
		if (ifp == NULL || !(ifp->int_state & IS_BROKE))
			FUNC5("sendto(%s%s%s): %s",
			       ifp != NULL ? ifp->int_name : "",
			       ifp != NULL ? ", " : "",
			       FUNC3(rsin.sin_addr),
			       FUNC8(errno));
		if (ifp != NULL)
			FUNC2(ifp);
	}
}