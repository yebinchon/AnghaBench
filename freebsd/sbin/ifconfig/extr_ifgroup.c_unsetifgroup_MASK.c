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
struct ifgroupreq {int /*<<< orphan*/  ifgr_group; int /*<<< orphan*/  ifgr_name; } ;
struct afswtch {int dummy; } ;
typedef  int /*<<< orphan*/  ifgr ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCDIFGROUP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const) ; 
 int /*<<< orphan*/  FUNC4 (struct ifgroupreq*,int /*<<< orphan*/ ,int) ; 
 char const* name ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static void
FUNC7(const char *group_name, int d, int s, const struct afswtch *rafp)
{
	struct ifgroupreq ifgr;

	FUNC4(&ifgr, 0, sizeof(ifgr));
	FUNC5(ifgr.ifgr_name, name, IFNAMSIZ);

	if (group_name[0] && FUNC3(group_name[FUNC6(group_name) - 1]))
		FUNC1(1, "unsetifgroup: group names may not end in a digit");

	if (FUNC5(ifgr.ifgr_group, group_name, IFNAMSIZ) >= IFNAMSIZ)
		FUNC1(1, "unsetifgroup: group name too long");
	if (FUNC2(s, SIOCDIFGROUP, (caddr_t)&ifgr) == -1 && errno != ENOENT)
		FUNC0(1, "SIOCDIFGROUP");
}