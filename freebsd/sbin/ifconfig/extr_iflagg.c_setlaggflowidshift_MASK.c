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
struct lagg_reqopts {int ro_flowid_shift; int /*<<< orphan*/  ro_ifname; int /*<<< orphan*/  ro_opts; } ;
struct afswtch {int dummy; } ;
typedef  int /*<<< orphan*/  ro ;

/* Variables and functions */
 int /*<<< orphan*/  LAGG_OPT_FLOWIDSHIFT ; 
 int LAGG_OPT_FLOWIDSHIFT_MASK ; 
 int /*<<< orphan*/  SIOCSLAGGOPTS ; 
 int /*<<< orphan*/  FUNC0 (struct lagg_reqopts*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct lagg_reqopts*) ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC6(const char *val, int d, int s, const struct afswtch *afp)
{
	struct lagg_reqopts ro;

	FUNC0(&ro, sizeof(ro));
	ro.ro_opts = LAGG_OPT_FLOWIDSHIFT;
	FUNC4(ro.ro_ifname, name, sizeof(ro.ro_ifname));
	ro.ro_flowid_shift = (int)FUNC5(val, NULL, 10);
	if (ro.ro_flowid_shift & ~LAGG_OPT_FLOWIDSHIFT_MASK)
		FUNC2(1, "Invalid flowid_shift option: %s", val);
	
	if (FUNC3(s, SIOCSLAGGOPTS, &ro) != 0)
		FUNC1(1, "SIOCSLAGGOPTS");
}