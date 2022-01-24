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
struct TYPE_2__ {scalar_t__ icmp_type; int /*<<< orphan*/  icmp_code; } ;
union ad_u {TYPE_1__ icmp; } ;
typedef  int /*<<< orphan*/  u_int ;
struct interface {int dummy; } ;
typedef  int /*<<< orphan*/  naddr ;

/* Variables and functions */
 scalar_t__ ICMP_ROUTERADVERT ; 
 scalar_t__ ICMP_ROUTERSOLICIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct interface*,union ad_u*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct interface *		/* 0 if bad */
FUNC3(const char *act,
	naddr	from,
	struct interface *ifp,
	naddr	to,
	union ad_u *p,
	u_int	len)
{
	const char *type;


	if (p->icmp.icmp_type == ICMP_ROUTERADVERT) {
		type = "advertisement";
	} else if (p->icmp.icmp_type == ICMP_ROUTERSOLICIT) {
		type = "solicitation";
	} else {
		return 0;
	}

	if (p->icmp.icmp_code != 0) {
		FUNC1("unrecognized ICMP Router %s code=%d from %s to %s",
			  type, p->icmp.icmp_code,
			  FUNC0(from), FUNC0(to));
		return 0;
	}

	FUNC2(act, from, to, ifp, p, len);

	if (ifp == NULL)
		FUNC1("unknown interface for router-discovery %s"
			  " from %s to %s",
			  type, FUNC0(from), FUNC0(to));

	return ifp;
}