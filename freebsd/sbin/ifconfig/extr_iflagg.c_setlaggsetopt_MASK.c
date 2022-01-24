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
struct lagg_reqopts {int ro_opts; int /*<<< orphan*/  ro_ifname; } ;
struct afswtch {int dummy; } ;
typedef  int /*<<< orphan*/  ro ;

/* Variables and functions */
#define  LAGG_OPT_LACP_RXTEST 133 
#define  LAGG_OPT_LACP_STRICT 132 
#define  LAGG_OPT_LACP_TIMEOUT 131 
#define  LAGG_OPT_LACP_TXTEST 130 
#define  LAGG_OPT_USE_FLOWID 129 
#define  LAGG_OPT_USE_NUMA 128 
 int /*<<< orphan*/  SIOCSLAGGOPTS ; 
 int /*<<< orphan*/  FUNC0 (struct lagg_reqopts*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct lagg_reqopts*) ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(const char *val, int d, int s, const struct afswtch *afp)
{
	struct lagg_reqopts ro;

	FUNC0(&ro, sizeof(ro));
	ro.ro_opts = d;
	switch (ro.ro_opts) {
	case LAGG_OPT_USE_FLOWID:
	case -LAGG_OPT_USE_FLOWID:
	case LAGG_OPT_USE_NUMA:
	case -LAGG_OPT_USE_NUMA:
	case LAGG_OPT_LACP_STRICT:
	case -LAGG_OPT_LACP_STRICT:
	case LAGG_OPT_LACP_TXTEST:
	case -LAGG_OPT_LACP_TXTEST:
	case LAGG_OPT_LACP_RXTEST:
	case -LAGG_OPT_LACP_RXTEST:
	case LAGG_OPT_LACP_TIMEOUT:
	case -LAGG_OPT_LACP_TIMEOUT:
		break;
	default:
		FUNC1(1, "Invalid lagg option");
	}
	FUNC3(ro.ro_ifname, name, sizeof(ro.ro_ifname));
	
	if (FUNC2(s, SIOCSLAGGOPTS, &ro) != 0)
		FUNC1(1, "SIOCSLAGGOPTS");
}