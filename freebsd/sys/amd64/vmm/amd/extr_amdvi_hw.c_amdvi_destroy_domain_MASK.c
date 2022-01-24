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
struct amdvi_domain {int id; int /*<<< orphan*/  ptp_level; scalar_t__ ptp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdvi_domain*,char*) ; 
 int /*<<< orphan*/  M_AMDVI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct amdvi_domain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  amdvi_domain ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dom_head ; 
 int /*<<< orphan*/  FUNC4 (struct amdvi_domain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	struct amdvi_domain *domain;

	domain = (struct amdvi_domain *)arg;
	FUNC0(domain, ("domain is NULL"));
#ifdef AMDVI_DEBUG_CMD
	printf("Destroying domain %d\n", domain->id);
#endif
	if (domain->ptp)
		FUNC3(domain->ptp, domain->ptp_level);

	FUNC2(domain->id, false);
	FUNC1(&dom_head, domain, amdvi_domain, next);
	FUNC4(domain, M_AMDVI);
}