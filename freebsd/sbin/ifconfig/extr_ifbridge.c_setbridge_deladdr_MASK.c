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
struct ifbareq {int /*<<< orphan*/  ifba_dst; } ;
struct ether_addr {int /*<<< orphan*/  octet; } ;
struct afswtch {int dummy; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  BRDGDADDR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,struct ifbareq*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 struct ether_addr* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ifbareq*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(const char *val, int d, int s, const struct afswtch *afp)
{
	struct ifbareq req;
	struct ether_addr *ea;

	FUNC5(&req, 0, sizeof(req));

	ea = FUNC3(val);
	if (ea == NULL)
		FUNC2(1, "invalid address: %s",  val);

	FUNC4(req.ifba_dst, ea->octet, sizeof(req.ifba_dst));

	if (FUNC0(s, BRDGDADDR, &req, sizeof(req), 1) < 0)
		FUNC1(1, "BRDGDADDR %s",  val);
}