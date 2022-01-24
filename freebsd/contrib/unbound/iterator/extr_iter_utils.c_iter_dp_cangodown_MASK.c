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
struct query_info {int /*<<< orphan*/  qname; } ;
struct delegpt {scalar_t__ namelabs; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct query_info* qinfo, struct delegpt* dp)
{
	/* no delegation point, do not see how we can go down,
	 * robust check, it should really exist */
	if(!dp) return 0;

	/* see if dp equals the qname, then we cannot go down further */
	if(FUNC1(qinfo->qname, dp->name) == 0)
		return 0;
	/* if dp is one label above the name we also cannot go down further */
	if(FUNC0(qinfo->qname) == dp->namelabs+1)
		return 0;
	return 1;
}