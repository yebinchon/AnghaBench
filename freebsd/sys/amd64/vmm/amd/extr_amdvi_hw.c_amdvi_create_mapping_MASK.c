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
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  int uint64_t ;
struct amdvi_domain {scalar_t__ ptp; scalar_t__ id; } ;

/* Variables and functions */
 int FUNC0 (struct amdvi_domain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static uint64_t
FUNC2(void *arg, vm_paddr_t gpa, vm_paddr_t hpa,
    uint64_t len)
{
	struct amdvi_domain *domain;

	domain = (struct amdvi_domain *)arg;

	if (domain->id && !domain->ptp) {
		FUNC1("ptp is NULL");
		return (-1);
	}

	/*
	 * If host domain is created w/o page table, skip IOMMU page
	 * table set-up.
	 */
	if (domain->ptp)
		return (FUNC0(domain, gpa, hpa, len, true));
	else
		return (len);
}