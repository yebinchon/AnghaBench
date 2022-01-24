#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct in6_ndifreq {unsigned int ifindex; int /*<<< orphan*/  ifname; } ;
typedef  int /*<<< orphan*/  ndifreq ;
struct TYPE_5__ {int /*<<< orphan*/  errtype; } ;
struct TYPE_6__ {TYPE_1__ error; } ;
typedef  TYPE_2__ ifconfig_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  OK ; 
 int /*<<< orphan*/  SIOCGDEFIFACE_IN6 ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct in6_ndifreq*) ; 
 int /*<<< orphan*/  FUNC2 (struct in6_ndifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static bool
FUNC4(ifconfig_handle_t *h, const char *name)
{
	struct in6_ndifreq ndifreq;
	unsigned int ifindex;

	FUNC2(&ndifreq, 0, sizeof(ndifreq));
	FUNC3(ndifreq.ifname, name, sizeof(ndifreq.ifname));
	ifindex = FUNC0(ndifreq.ifname);
	if (FUNC1(h, AF_INET6, SIOCGDEFIFACE_IN6, &ndifreq) < 0) {
		return (false);
	}
	h->error.errtype = OK;
	return (ndifreq.ifindex == ifindex);
}