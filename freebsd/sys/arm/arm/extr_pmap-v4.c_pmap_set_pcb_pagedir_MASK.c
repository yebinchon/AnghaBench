#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pcb {int pcb_dacr; int pcb_l1vec; int /*<<< orphan*/ * pcb_pl1vec; int /*<<< orphan*/  pcb_pagedir; } ;
struct l2_bucket {int l2b_phys; } ;
typedef  TYPE_2__* pmap_t ;
struct TYPE_6__ {int pm_domain; TYPE_1__* pm_l1; } ;
struct TYPE_5__ {int /*<<< orphan*/ * l1_kva; int /*<<< orphan*/  l1_physaddr; } ;

/* Variables and functions */
 int DOMAIN_CLIENT ; 
 scalar_t__ KERNBASE ; 
 int FUNC0 (int) ; 
 int L1_C_PROTO ; 
 size_t FUNC1 (scalar_t__) ; 
 int PMAP_DOMAIN_KERNEL ; 
 struct l2_bucket* FUNC2 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ vector_page ; 

void
FUNC3(pmap_t pm, struct pcb *pcb)
{
	struct l2_bucket *l2b;

	pcb->pcb_pagedir = pm->pm_l1->l1_physaddr;
	pcb->pcb_dacr = (DOMAIN_CLIENT << (PMAP_DOMAIN_KERNEL * 2)) |
	    (DOMAIN_CLIENT << (pm->pm_domain * 2));

	if (vector_page < KERNBASE) {
		pcb->pcb_pl1vec = &pm->pm_l1->l1_kva[FUNC1(vector_page)];
		l2b = FUNC2(pm, vector_page);
		pcb->pcb_l1vec = l2b->l2b_phys | L1_C_PROTO |
	 	    FUNC0(pm->pm_domain) | FUNC0(PMAP_DOMAIN_KERNEL);
	} else
		pcb->pcb_pl1vec = NULL;
}