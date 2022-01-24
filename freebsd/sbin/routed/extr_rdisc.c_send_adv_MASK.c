#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int icmp_ad_num; int icmp_ad_asize; int /*<<< orphan*/  icmp_cksum; TYPE_1__* icmp_ad_info; int /*<<< orphan*/  icmp_ad_life; int /*<<< orphan*/  icmp_type; } ;
union ad_u {TYPE_2__ ad; } ;
typedef  int /*<<< orphan*/  u_short ;
struct interface {int int_rdisc_int; int /*<<< orphan*/  int_addr; int /*<<< orphan*/  int_rdisc_pref; } ;
typedef  int /*<<< orphan*/  naddr ;
typedef  int /*<<< orphan*/  n_long ;
struct TYPE_3__ {int /*<<< orphan*/  icmp_ad_addr; int /*<<< orphan*/  icmp_ad_pref; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMP_ROUTERADVERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct interface*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (union ad_u*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (union ad_u*,int,struct interface*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ stopint ; 

__attribute__((used)) static void
FUNC8(struct interface *ifp,
	 naddr	dst,			/* 0 or unicast destination */
	 int	type)			/* 0=unicast, 1=bcast, 2=mcast */
{
	union ad_u u;
	n_long pref;


	FUNC6(&u, 0, sizeof(u.ad));

	u.ad.icmp_type = ICMP_ROUTERADVERT;
	u.ad.icmp_ad_num = 1;
	u.ad.icmp_ad_asize = sizeof(u.ad.icmp_ad_info[0])/4;

	u.ad.icmp_ad_life = stopint ? 0 : FUNC4(ifp->int_rdisc_int*3);

	/* Convert the configured preference to an unsigned value,
	 * bias it by the interface metric, and then send it as a
	 * signed, network byte order value.
	 */
	pref = FUNC2(ifp->int_rdisc_pref);
	u.ad.icmp_ad_info[0].icmp_ad_pref = FUNC3(FUNC1(FUNC0(pref, ifp)));

	u.ad.icmp_ad_info[0].icmp_ad_addr = ifp->int_addr;

	u.ad.icmp_cksum = FUNC5((u_short*)&u.ad, sizeof(u.ad));

	FUNC7(&u, sizeof(u.ad), ifp, dst, type);
}