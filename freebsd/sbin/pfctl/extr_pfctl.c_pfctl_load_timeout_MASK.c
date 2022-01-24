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
struct pfioc_tm {unsigned int timeout; unsigned int seconds; } ;
struct pfctl {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  pt ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCSETTIMEOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pfioc_tm*) ; 
 int /*<<< orphan*/  FUNC1 (struct pfioc_tm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int
FUNC3(struct pfctl *pf, unsigned int timeout, unsigned int seconds)
{
	struct pfioc_tm pt;

	FUNC1(&pt, 0, sizeof(pt));
	pt.timeout = timeout;
	pt.seconds = seconds;
	if (FUNC0(pf->dev, DIOCSETTIMEOUT, &pt)) {
		FUNC2("DIOCSETTIMEOUT");
		return (1);
	}
	return (0);
}