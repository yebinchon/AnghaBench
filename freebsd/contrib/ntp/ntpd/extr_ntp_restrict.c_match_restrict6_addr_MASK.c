#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_short ;
struct in6_addr {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  mask; } ;
struct TYPE_8__ {TYPE_1__ v6; } ;
struct TYPE_9__ {scalar_t__ expire; int mflags; TYPE_2__ u; struct TYPE_9__* link; } ;
typedef  TYPE_3__ restrict_u ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct in6_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct in6_addr*,struct in6_addr const*,int /*<<< orphan*/ *) ; 
 int NTP_PORT ; 
 int RESM_NTPONLY ; 
 scalar_t__ current_time ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int const) ; 
 TYPE_3__* restrictlist6 ; 

__attribute__((used)) static restrict_u *
FUNC4(
	const struct in6_addr *	addr,
	u_short			port
	)
{
	const int	v6 = 1;
	restrict_u *	res;
	restrict_u *	next;
	struct in6_addr	masked;

	for (res = restrictlist6; res != NULL; res = next) {
		next = res->link;
		FUNC1(next != res);
		if (res->expire &&
		    res->expire <= current_time)
			FUNC3(res, v6);
		FUNC2(&masked, addr, &res->u.v6.mask);
		if (FUNC0(&masked, &res->u.v6.addr)
		    && (!(RESM_NTPONLY & res->mflags)
			|| NTP_PORT == (int)port))
			break;
	}
	return res;
}