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
struct pfioc_altq {int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGETALTQS ; 
 scalar_t__ ENODEV ; 
 int /*<<< orphan*/  PFIOC_ALTQ_VERSION ; 
 int PF_OPT_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct pfioc_altq*) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC3(int dev, int opts)
{
	struct pfioc_altq pa;

	pa.version = PFIOC_ALTQ_VERSION;
	if (FUNC2(dev, DIOCGETALTQS, &pa)) {
		if (errno == ENODEV) {
			if (opts & PF_OPT_VERBOSE)
				FUNC1(stderr, "No ALTQ support in kernel\n"
				    "ALTQ related functions disabled\n");
			return (0);
		} else
			FUNC0(1, "DIOCGETALTQS");
	}
	return (1);
}