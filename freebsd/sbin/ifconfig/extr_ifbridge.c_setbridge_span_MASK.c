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
struct ifbreq {int /*<<< orphan*/  ifbr_ifsname; } ;
struct afswtch {int dummy; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  BRDGADDS ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,struct ifbreq*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifbreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void
FUNC4(const char *val, int d, int s, const struct afswtch *afp)
{
	struct ifbreq req;

	FUNC2(&req, 0, sizeof(req));
	FUNC3(req.ifbr_ifsname, val, sizeof(req.ifbr_ifsname));
	if (FUNC0(s, BRDGADDS, &req, sizeof(req), 1) < 0)
		FUNC1(1, "BRDGADDS %s",  val);
}