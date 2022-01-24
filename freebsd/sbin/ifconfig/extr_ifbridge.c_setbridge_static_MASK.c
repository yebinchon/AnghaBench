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
struct ifbareq {int ifba_vlan; int /*<<< orphan*/  ifba_flags; int /*<<< orphan*/  ifba_dst; int /*<<< orphan*/  ifba_ifsname; } ;
struct ether_addr {int /*<<< orphan*/  octet; } ;
struct afswtch {int dummy; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  BRDGSADDR ; 
 int /*<<< orphan*/  IFBAF_STATIC ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,struct ifbareq*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*,char const*) ; 
 struct ether_addr* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ifbareq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void
FUNC7(const char *val, const char *mac, int s,
    const struct afswtch *afp)
{
	struct ifbareq req;
	struct ether_addr *ea;

	FUNC5(&req, 0, sizeof(req));
	FUNC6(req.ifba_ifsname, val, sizeof(req.ifba_ifsname));

	ea = FUNC3(mac);
	if (ea == NULL)
		FUNC2(1, "%s: invalid address: %s", val, mac);

	FUNC4(req.ifba_dst, ea->octet, sizeof(req.ifba_dst));
	req.ifba_flags = IFBAF_STATIC;
	req.ifba_vlan = 1; /* XXX allow user to specify */

	if (FUNC0(s, BRDGSADDR, &req, sizeof(req), 1) < 0)
		FUNC1(1, "BRDGSADDR %s",  val);
}