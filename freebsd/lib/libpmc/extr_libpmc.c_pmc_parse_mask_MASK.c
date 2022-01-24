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
typedef  int /*<<< orphan*/  uint64_t ;
struct pmc_masks {int /*<<< orphan*/  pm_value; int /*<<< orphan*/ * pm_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*,char) ; 
 char* FUNC2 (char**,char*) ; 

__attribute__((used)) static int
FUNC3(const struct pmc_masks *pmask, char *p, uint64_t *evmask)
{
	const struct pmc_masks *pm;
	char *q, *r;
	int c;

	if (pmask == NULL)	/* no mask keywords */
		return (-1);
	q = FUNC1(p, '=');	/* skip '=' */
	if (*++q == '\0')	/* no more data */
		return (-1);
	c = 0;			/* count of mask keywords seen */
	while ((r = FUNC2(&q, "+")) != NULL) {
		for (pm = pmask; pm->pm_name && FUNC0(r, pm->pm_name);
		    pm++)
			;
		if (pm->pm_name == NULL) /* not found */
			return (-1);
		*evmask |= pm->pm_value;
		c++;
	}
	return (c);
}