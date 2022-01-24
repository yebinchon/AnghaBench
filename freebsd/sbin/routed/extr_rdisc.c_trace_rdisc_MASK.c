#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  icmp_so_rsvd; } ;
struct TYPE_7__ {int icmp_ad_num; int /*<<< orphan*/  icmp_ad_asize; TYPE_2__* icmp_ad_info; int /*<<< orphan*/  icmp_ad_life; } ;
struct TYPE_5__ {scalar_t__ icmp_type; } ;
union ad_u {TYPE_4__ so; TYPE_3__ ad; TYPE_1__ icmp; } ;
typedef  int u_int ;
struct interface {char* int_name; } ;
typedef  int /*<<< orphan*/  naddr ;
typedef  int /*<<< orphan*/  n_long ;
struct TYPE_6__ {int /*<<< orphan*/  icmp_ad_addr; } ;

/* Variables and functions */
 scalar_t__ ICMP_ROUTERADVERT ; 
 int /*<<< orphan*/  TRACECONTENTS ; 
 int /*<<< orphan*/  TRACEPACKETS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ftrace ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,char*,char*,char*,int) ; 

__attribute__((used)) static void
FUNC7(const char	*act,
	    naddr	from,
	    naddr	to,
	    struct interface *ifp,
	    union ad_u	*p,
	    u_int	len)
{
	int i;
	n_long *wp, *lim;


	if (!TRACEPACKETS || ftrace == NULL)
		return;

	FUNC2();

	if (p->icmp.icmp_type == ICMP_ROUTERADVERT) {
		(void)FUNC0(ftrace, "%s Router Ad"
			      " from %s to %s via %s life=%d\n",
			      act, FUNC3(from), FUNC3(to),
			      ifp ? ifp->int_name : "?",
			      FUNC5(p->ad.icmp_ad_life));
		if (!TRACECONTENTS)
			return;

		wp = &p->ad.icmp_ad_info[0].icmp_ad_addr;
		lim = &wp[(len - sizeof(p->ad)) / sizeof(*wp)];
		for (i = 0; i < p->ad.icmp_ad_num && wp <= lim; i++) {
			(void)FUNC0(ftrace, "\t%s preference=%d",
				      FUNC3(wp[0]), (int)FUNC4(wp[1]));
			wp += p->ad.icmp_ad_asize;
		}
		(void)FUNC1('\n',ftrace);

	} else {
		FUNC6("%s Router Solic. from %s to %s via %s value=%#x",
			  act, FUNC3(from), FUNC3(to),
			  ifp ? ifp->int_name : "?",
			  (int)FUNC4(p->so.icmp_so_rsvd));
	}
}