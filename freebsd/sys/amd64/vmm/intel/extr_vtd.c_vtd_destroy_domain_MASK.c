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
struct domain {int /*<<< orphan*/  pt_levels; int /*<<< orphan*/  ptp; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_VTD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct domain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  domain ; 
 int /*<<< orphan*/  domhead ; 
 int /*<<< orphan*/  FUNC1 (struct domain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct domain *dom;
	
	dom = arg;

	FUNC0(&domhead, dom, domain, next);
	FUNC2(dom->ptp, dom->pt_levels);
	FUNC1(dom, M_VTD);
}