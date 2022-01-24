#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xsd ;
typedef  int /*<<< orphan*/  tot ;
typedef  scalar_t__ swblk_t ;
typedef  int /*<<< orphan*/  swap_ary ;
struct xswdev {scalar_t__ xsw_version; scalar_t__ xsw_used; int /*<<< orphan*/  xsw_dev; int /*<<< orphan*/  xsw_flags; scalar_t__ xsw_nblks; } ;
struct kvm_swap {scalar_t__ ksw_used; scalar_t__ ksw_total; int /*<<< orphan*/  ksw_devname; int /*<<< orphan*/  ksw_flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  program; } ;
typedef  TYPE_1__ kvm_t ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,scalar_t__) ; 
 int SWI_MAXMIB ; 
 scalar_t__ XSWDEV_VERSION ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_swap*,int) ; 
 scalar_t__ dmmax ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (int*,size_t,struct xswdev*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int*,size_t*) ; 
 int unswdev ; 

int
FUNC7(kvm_t *kd, struct kvm_swap *swap_ary, int swap_max,
    int flags)
{
	int ti;
	swblk_t ttl;
	size_t mibi, len;
	int soid[SWI_MAXMIB];
	struct xswdev xsd;
	struct kvm_swap tot;

	if (!FUNC1(kd, "vm.dmmax", dmmax))
		return -1;

	mibi = SWI_MAXMIB - 1;
	if (FUNC6("vm.swap_info", soid, &mibi) == -1) {
		FUNC2(kd, kd->program, "sysctlnametomib failed: %s",
		    FUNC4(errno));
		return -1;
	}
	FUNC3(&tot, sizeof(tot));
	for (unswdev = 0;; unswdev++) {
		soid[mibi] = unswdev;
		len = sizeof(xsd);
		if (FUNC5(soid, mibi + 1, &xsd, &len, NULL, 0) == -1) {
			if (errno == ENOENT)
				break;
			FUNC2(kd, kd->program, "cannot read sysctl: %s.",
			    FUNC4(errno));
			return -1;
		}
		if (len != sizeof(xsd)) {
			FUNC2(kd, kd->program, "struct xswdev has unexpected "
			    "size;  kernel and libkvm out of sync?");
			return -1;
		}
		if (xsd.xsw_version != XSWDEV_VERSION) {
			FUNC2(kd, kd->program, "struct xswdev version "
			    "mismatch; kernel and libkvm out of sync?");
			return -1;
		}

		ttl = xsd.xsw_nblks - dmmax;
		if (unswdev < swap_max - 1) {
			FUNC3(&swap_ary[unswdev], sizeof(swap_ary[unswdev]));
			swap_ary[unswdev].ksw_total = ttl;
			swap_ary[unswdev].ksw_used = xsd.xsw_used;
			swap_ary[unswdev].ksw_flags = xsd.xsw_flags;
			FUNC0(xsd.xsw_dev, swap_ary[unswdev].ksw_devname,
			     flags);
		}
		tot.ksw_total += ttl;
		tot.ksw_used += xsd.xsw_used;
	}

	ti = unswdev;
	if (ti >= swap_max)
		ti = swap_max - 1;
	if (ti >= 0)
		swap_ary[ti] = tot;

        return(ti);
}