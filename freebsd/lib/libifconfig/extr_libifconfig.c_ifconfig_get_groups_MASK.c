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
struct ifgroupreq {int ifgr_len; struct ifg_req* ifgr_groups; int /*<<< orphan*/  ifgr_name; } ;
struct ifg_req {int dummy; } ;
struct TYPE_5__ {scalar_t__ errcode; } ;
struct TYPE_6__ {TYPE_1__ error; } ;
typedef  TYPE_2__ ifconfig_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOTTY ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCGIFGROUP ; 
 int /*<<< orphan*/  FUNC0 (struct ifg_req*,int) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifgroupreq*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifgroupreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

int
FUNC5(ifconfig_handle_t *h, const char *name,
    struct ifgroupreq *ifgr)
{
	int len;

	FUNC3(ifgr, 0, sizeof(*ifgr));
	FUNC4(ifgr->ifgr_name, name, IFNAMSIZ);

	if (FUNC1(h, AF_LOCAL, SIOCGIFGROUP, ifgr) == -1) {
		if ((h->error.errcode == EINVAL) ||
		    (h->error.errcode == ENOTTY)) {
			return (0);
		} else {
			return (-1);
		}
	}

	len = ifgr->ifgr_len;
	ifgr->ifgr_groups = (struct ifg_req *)FUNC2(len);
	if (ifgr->ifgr_groups == NULL) {
		return (1);
	}
	FUNC0(ifgr->ifgr_groups, len);
	if (FUNC1(h, AF_LOCAL, SIOCGIFGROUP, ifgr) == -1) {
		return (-1);
	}

	return (0);
}