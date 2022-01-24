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
typedef  int /*<<< orphan*/  t ;
struct pfr_buffer {int /*<<< orphan*/  pfrb_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCXBEGIN ; 
 int /*<<< orphan*/  DIOCXCOMMIT ; 
 int /*<<< orphan*/  PFRB_TRANS ; 
 int PF_OPT_QUIET ; 
 int /*<<< orphan*/  PF_RULESET_ALTQ ; 
 int /*<<< orphan*/  altqsupport ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pfr_buffer*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct pfr_buffer*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int,struct pfr_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC5(int dev, int opts)
{
	struct pfr_buffer t;

	if (!altqsupport)
		return (-1);
	FUNC2(&t, 0, sizeof(t));
	t.pfrb_type = PFRB_TRANS;
	if (FUNC3(&t, PF_RULESET_ALTQ, "") ||
	    FUNC4(dev, &t, DIOCXBEGIN, 0) ||
	    FUNC4(dev, &t, DIOCXCOMMIT, 0))
		FUNC0(1, "pfctl_clear_altq");
	if ((opts & PF_OPT_QUIET) == 0)
		FUNC1(stderr, "altq cleared\n");
	return (0);
}