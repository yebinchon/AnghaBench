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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct interface {int int_state; int int_if_flags; int /*<<< orphan*/  int_index; } ;
struct group_req {int /*<<< orphan*/  gr_group; int /*<<< orphan*/  gr_interface; } ;
typedef  int /*<<< orphan*/  gr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int IFF_MULTICAST ; 
 int /*<<< orphan*/  INADDR_RIP_GROUP ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int IS_ALIAS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  MCAST_JOIN_GROUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct group_req*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rip_sock ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct group_req*,int) ; 

__attribute__((used)) static void
FUNC5(struct interface *ifp)
{
	struct group_req gr;
	struct sockaddr_in *sin;

	if (!FUNC0(ifp->int_state)
	    && (ifp->int_if_flags & IFF_MULTICAST)
	    && !(ifp->int_state & IS_ALIAS)) {
		FUNC3(&gr, 0, sizeof(gr));
		gr.gr_interface = ifp->int_index;
		sin = (struct sockaddr_in *)&gr.gr_group;
		sin->sin_family = AF_INET;
#ifdef _HAVE_SIN_LEN
		sin->sin_len = sizeof(struct sockaddr_in);
#endif
		sin->sin_addr.s_addr = FUNC2(INADDR_RIP_GROUP);
		if (FUNC4(rip_sock, IPPROTO_IP, MCAST_JOIN_GROUP,
			       &gr, sizeof(gr)) < 0)
			FUNC1("setsockopt(MCAST_JOIN_GROUP RIP)");
	}
}