#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  union res_sockaddr_union {int dummy; } res_sockaddr_union ;
typedef  int /*<<< orphan*/  rrset_ns ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ rr_ns ;
typedef  int /*<<< orphan*/  res_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,union res_sockaddr_union*,int) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  link ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int
FUNC6(res_state statp, const char *mname, rrset_ns *nsrrsp,
	union res_sockaddr_union *addrs, int naddrs)
{
	rr_ns *nsrr;
	int n, x;

	n = 0;
	nsrr = FUNC4(nsrrsp, mname);
	if (nsrr != NULL) {
		x = FUNC3(statp, nsrr, addrs, naddrs);
		addrs += x;
		naddrs -= x;
		n += x;
	}
	for (nsrr = FUNC1(*nsrrsp);
	     nsrr != NULL && naddrs > 0;
	     nsrr = FUNC2(nsrr, link))
		if (FUNC5(nsrr->name, mname) != 1) {
			x = FUNC3(statp, nsrr, addrs, naddrs);
			addrs += x;
			naddrs -= x;
			n += x;
		}
	FUNC0(("satisfy(%s): %d", mname, n));
	return (n);
}