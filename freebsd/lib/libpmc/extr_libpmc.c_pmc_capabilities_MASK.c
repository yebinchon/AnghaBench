#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  pmc_id_t ;
typedef  enum pmc_class { ____Placeholder_pmc_class } pmc_class ;
struct TYPE_4__ {unsigned int pm_nclass; TYPE_1__* pm_classes; } ;
struct TYPE_3__ {int pm_class; int /*<<< orphan*/  pm_caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__ cpu_info ; 
 int /*<<< orphan*/  errno ; 

int
FUNC1(pmc_id_t pmcid, uint32_t *caps)
{
	unsigned int i;
	enum pmc_class cl;

	cl = FUNC0(pmcid);
	for (i = 0; i < cpu_info.pm_nclass; i++)
		if (cpu_info.pm_classes[i].pm_class == cl) {
			*caps = cpu_info.pm_classes[i].pm_caps;
			return (0);
		}
	errno = EINVAL;
	return (-1);
}