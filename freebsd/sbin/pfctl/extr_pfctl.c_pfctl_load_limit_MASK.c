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
struct pfioc_limit {unsigned int index; unsigned int limit; } ;
struct pfctl {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  pl ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCSETLIMIT ; 
 scalar_t__ EBUSY ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pfioc_limit*) ; 
 int /*<<< orphan*/  FUNC1 (struct pfioc_limit*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int
FUNC3(struct pfctl *pf, unsigned int index, unsigned int limit)
{
	struct pfioc_limit pl;

	FUNC1(&pl, 0, sizeof(pl));
	pl.index = index;
	pl.limit = limit;
	if (FUNC0(pf->dev, DIOCSETLIMIT, &pl)) {
		if (errno == EBUSY)
			FUNC2("Current pool size exceeds requested hard limit");
		else
			FUNC2("DIOCSETLIMIT");
		return (1);
	}
	return (0);
}