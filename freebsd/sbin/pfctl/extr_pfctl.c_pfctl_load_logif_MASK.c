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
struct pfioc_if {int /*<<< orphan*/  ifname; } ;
struct pfctl {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  pi ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCSETSTATUSIF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pfioc_if*) ; 
 int /*<<< orphan*/  FUNC1 (struct pfioc_if*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int
FUNC4(struct pfctl *pf, char *ifname)
{
	struct pfioc_if pi;

	FUNC1(&pi, 0, sizeof(pi));
	if (ifname && FUNC2(pi.ifname, ifname,
	    sizeof(pi.ifname)) >= sizeof(pi.ifname)) {
		FUNC3("pfctl_load_logif: strlcpy");
		return (1);
	}
	if (FUNC0(pf->dev, DIOCSETSTATUSIF, &pi)) {
		FUNC3("DIOCSETSTATUSIF");
		return (1);
	}
	return (0);
}