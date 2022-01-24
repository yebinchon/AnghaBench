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
struct process {int dummy; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/ * STRjobcmd ; 
 int /*<<< orphan*/ * STRunalias ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  aliases ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  disabled_cleanup ; 
 int jobcmd_active ; 
 struct process* pcurrjob ; 
 int /*<<< orphan*/  pintr_disabled ; 
 scalar_t__ whyles ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

void
FUNC6(Char *args)
{
    if (whyles)
	return;
    pintr_disabled++;
    FUNC3(&pintr_disabled, disabled_cleanup);
    if (jobcmd_active) {	/* an error must have been caught */
	FUNC2(2, STRunalias, STRjobcmd);
	FUNC5("%s", FUNC0(22, 14, "Faulty alias 'jobcmd' removed.\n"));
	goto leave;
    }
    jobcmd_active = 1;
    if (!whyles && FUNC1(STRjobcmd, &aliases)) {
	struct process *pp = pcurrjob; /* put things back after the hook */
	FUNC2(2, STRjobcmd, args);
	pcurrjob = pp;
    }
leave:
    jobcmd_active = 0;
    FUNC4(&pintr_disabled);
}