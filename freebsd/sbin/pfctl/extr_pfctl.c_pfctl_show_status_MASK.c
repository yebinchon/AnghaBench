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
struct pf_status {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGETSTATUS ; 
 int PF_OPT_SHOWALL ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,struct pf_status*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pf_status*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int
FUNC4(int dev, int opts)
{
	struct pf_status status;

	if (FUNC0(dev, DIOCGETSTATUS, &status)) {
		FUNC3("DIOCGETSTATUS");
		return (-1);
	}
	if (opts & PF_OPT_SHOWALL)
		FUNC1("INFO:");
	FUNC2(&status, opts);
	return (0);
}