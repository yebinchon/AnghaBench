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
typedef  int uint16_t ;
struct amdvi_domain {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdvi_domain*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

__attribute__((used)) static void
FUNC3(void *arg, uint16_t devid)
{
	struct amdvi_domain *domain;

	domain = (struct amdvi_domain *)arg;
#ifdef AMDVI_DEBUG_CMD
	printf("Remove device(0x%x) from domain:%d\n",
	       devid, domain->id);
#endif
	FUNC1(domain, devid, false);
	FUNC0(devid);
}