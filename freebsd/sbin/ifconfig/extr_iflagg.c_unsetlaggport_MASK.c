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
struct lagg_reqport {int /*<<< orphan*/  rp_portname; int /*<<< orphan*/  rp_ifname; } ;
struct afswtch {int dummy; } ;
typedef  int /*<<< orphan*/  rp ;

/* Variables and functions */
 int /*<<< orphan*/  SIOCSLAGGDELPORT ; 
 int /*<<< orphan*/  FUNC0 (struct lagg_reqport*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct lagg_reqport*) ; 
 char const* name ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void
FUNC4(const char *val, int d, int s, const struct afswtch *afp)
{
	struct lagg_reqport rp;

	FUNC0(&rp, sizeof(rp));
	FUNC3(rp.rp_ifname, name, sizeof(rp.rp_ifname));
	FUNC3(rp.rp_portname, val, sizeof(rp.rp_portname));

	if (FUNC2(s, SIOCSLAGGDELPORT, &rp))
		FUNC1(1, "SIOCSLAGGDELPORT");
}