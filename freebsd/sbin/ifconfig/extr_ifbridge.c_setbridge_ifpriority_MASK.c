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
typedef  int u_long ;
struct ifbreq {int ifbr_priority; int /*<<< orphan*/  ifbr_ifsname; } ;
struct afswtch {int dummy; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  BRDGSIFPRIO ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,struct ifbreq*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 scalar_t__ FUNC3 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifbreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void
FUNC6(const char *ifn, const char *pri, int s,
    const struct afswtch *afp)
{
	struct ifbreq req;
	u_long val;

	FUNC4(&req, 0, sizeof(req));

	if (FUNC3(pri, &val) < 0 || (val & ~0xff) != 0)
		FUNC2(1, "invalid value: %s",  pri);

	FUNC5(req.ifbr_ifsname, ifn, sizeof(req.ifbr_ifsname));
	req.ifbr_priority = val & 0xff;

	if (FUNC0(s, BRDGSIFPRIO, &req, sizeof(req), 1) < 0)
		FUNC1(1, "BRDGSIFPRIO %s",  pri);
}