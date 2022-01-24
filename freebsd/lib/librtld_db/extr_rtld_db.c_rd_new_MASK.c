#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct proc_handle {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  rda_procstat; struct proc_handle* rda_php; } ;
typedef  TYPE_1__ rd_agent_t ;

/* Variables and functions */
 scalar_t__ RD_OK ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

rd_agent_t *
FUNC5(struct proc_handle *php)
{
	rd_agent_t *rdap;

	rdap = FUNC0(sizeof(*rdap));
	if (rdap == NULL)
		return (NULL);

	FUNC1(rdap, 0, sizeof(rd_agent_t));
	rdap->rda_php = php;
	rdap->rda_procstat = FUNC2();

	if (FUNC4(rdap) != RD_OK) {
		FUNC3(rdap);
		rdap = NULL;
	}
	return (rdap);
}