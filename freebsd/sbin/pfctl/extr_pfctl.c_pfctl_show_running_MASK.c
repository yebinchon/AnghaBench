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
struct pf_status {int /*<<< orphan*/  running; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGETSTATUS ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,struct pf_status*) ; 
 int /*<<< orphan*/  FUNC1 (struct pf_status*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int
FUNC3(int dev)
{
	struct pf_status status;

	if (FUNC0(dev, DIOCGETSTATUS, &status)) {
		FUNC2("DIOCGETSTATUS");
		return (-1);
	}

	FUNC1(&status);
	return (!status.running);
}