#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pt_entry_t ;
typedef  TYPE_1__* pmap_t ;
struct TYPE_4__ {int pm_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPT_PG_EMUL_RW ; 
 int /*<<< orphan*/  EPT_PG_WRITE ; 
#define  PT_EPT 130 
#define  PT_RVI 129 
#define  PT_X86 128 
 int /*<<< orphan*/  X86_PG_RW ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static __inline pt_entry_t
FUNC2(pmap_t pmap)
{
	pt_entry_t mask;

	switch (pmap->pm_type) {
	case PT_X86:
	case PT_RVI:
		mask = X86_PG_RW;
		break;
	case PT_EPT:
		if (FUNC1(pmap))
			mask = EPT_PG_EMUL_RW;
		else
			mask = EPT_PG_WRITE;
		break;
	default:
		FUNC0("pmap_rw_bit: invalid pm_type %d", pmap->pm_type);
	}

	return (mask);
}