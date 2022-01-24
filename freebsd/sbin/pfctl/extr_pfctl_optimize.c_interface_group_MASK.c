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
struct ifgroupreq {int /*<<< orphan*/  ifgr_name; } ;
typedef  int /*<<< orphan*/  ifgr ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCGIFGMEMB ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ errno ; 
 int FUNC1 () ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifgroupreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

int
FUNC5(const char *ifname)
{
	int			s;
	struct ifgroupreq	ifgr;

	if (ifname == NULL || !ifname[0])
		return (0);

	s = FUNC1();

	FUNC3(&ifgr, 0, sizeof(ifgr));
	FUNC4(ifgr.ifgr_name, ifname, IFNAMSIZ);
	if (FUNC2(s, SIOCGIFGMEMB, (caddr_t)&ifgr) == -1) {
		if (errno == ENOENT)
			return (0);
		else
			FUNC0(1, "SIOCGIFGMEMB");
	}

	return (1);
}