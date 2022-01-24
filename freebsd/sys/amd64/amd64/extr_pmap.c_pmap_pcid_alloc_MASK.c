#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  size_t u_int ;
typedef  TYPE_2__* pmap_t ;
struct TYPE_5__ {TYPE_1__* pm_pcids; } ;
struct TYPE_4__ {scalar_t__ pm_pcid; int pm_gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR3_PCID_SAVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 scalar_t__ PMAP_PCID_KERN ; 
 int PMAP_PCID_OVERMAX ; 
 int PMAP_PCID_OVERMAX_KERN ; 
 int /*<<< orphan*/  curthread ; 
 int pcid_gen ; 
 scalar_t__ pti ; 

__attribute__((used)) static uint64_t
FUNC4(pmap_t pmap, u_int cpuid)
{
	uint32_t gen, new_gen, pcid_next;

	FUNC0(curthread);
	gen = FUNC2(pcid_gen);
	if (pmap->pm_pcids[cpuid].pm_pcid == PMAP_PCID_KERN)
		return (pti ? 0 : CR3_PCID_SAVE);
	if (pmap->pm_pcids[cpuid].pm_gen == gen)
		return (CR3_PCID_SAVE);
	pcid_next = FUNC2(pcid_next);
	FUNC1((!pti && pcid_next <= PMAP_PCID_OVERMAX) ||
	    (pti && pcid_next <= PMAP_PCID_OVERMAX_KERN),
	    ("cpu %d pcid_next %#x", cpuid, pcid_next));
	if ((!pti && pcid_next == PMAP_PCID_OVERMAX) ||
	    (pti && pcid_next == PMAP_PCID_OVERMAX_KERN)) {
		new_gen = gen + 1;
		if (new_gen == 0)
			new_gen = 1;
		FUNC3(pcid_gen, new_gen);
		pcid_next = PMAP_PCID_KERN + 1;
	} else {
		new_gen = gen;
	}
	pmap->pm_pcids[cpuid].pm_pcid = pcid_next;
	pmap->pm_pcids[cpuid].pm_gen = new_gen;
	FUNC3(pcid_next, pcid_next + 1);
	return (0);
}