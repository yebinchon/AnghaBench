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
struct lagg_reqopts {int ro_bkt; int /*<<< orphan*/  ro_ifname; } ;
struct afswtch {int dummy; } ;
typedef  int /*<<< orphan*/  ro ;

/* Variables and functions */
 int /*<<< orphan*/  SIOCSLAGGOPTS ; 
 int /*<<< orphan*/  FUNC0 (struct lagg_reqopts*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct lagg_reqopts*) ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC5(const char *val, int d, int s, const struct afswtch *afp)
{
	struct lagg_reqopts ro;
	
	FUNC0(&ro, sizeof(ro));
	FUNC3(ro.ro_ifname, name, sizeof(ro.ro_ifname));
	ro.ro_bkt = (int)FUNC4(val, NULL, 10);

	if (FUNC2(s, SIOCSLAGGOPTS, &ro) != 0)
		FUNC1(1, "SIOCSLAGG");
}