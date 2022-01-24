#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  enum pmc_class { ____Placeholder_pmc_class } pmc_class ;
struct TYPE_3__ {int pm_class; char const* pm_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  errno ; 
 TYPE_1__* pmc_class_names ; 

const char *
FUNC1(enum pmc_class pc)
{
	size_t n;

	for (n = 0; n < FUNC0(pmc_class_names); n++)
		if (pc == pmc_class_names[n].pm_class)
			return (pmc_class_names[n].pm_name);

	errno = EINVAL;
	return (NULL);
}