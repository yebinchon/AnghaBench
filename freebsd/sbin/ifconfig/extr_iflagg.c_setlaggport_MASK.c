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
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  SIOCSLAGGPORT ; 
 int /*<<< orphan*/  FUNC0 (struct lagg_reqport*,int) ; 
 scalar_t__ errno ; 
 int exit_code ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct lagg_reqport*) ; 
 char const* name ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(const char *val, int d, int s, const struct afswtch *afp)
{
	struct lagg_reqport rp;

	FUNC0(&rp, sizeof(rp));
	FUNC3(rp.rp_ifname, name, sizeof(rp.rp_ifname));
	FUNC3(rp.rp_portname, val, sizeof(rp.rp_portname));

	/*
	 * Do not exit with an error here.  Doing so permits a
	 * failed NIC to take down an entire lagg.
	 *
	 * Don't error at all if the port is already in the lagg.
	 */
	if (FUNC1(s, SIOCSLAGGPORT, &rp) && errno != EEXIST) {
		FUNC4("%s %s: SIOCSLAGGPORT: %s",
		    name, val, FUNC2(errno));
		exit_code = 1;
	}
}