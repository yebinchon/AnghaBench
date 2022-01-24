#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
struct TYPE_7__ {int pvh_attrs; } ;
struct TYPE_8__ {int oflags; TYPE_1__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PVF_MOD ; 
 int VPO_UNMANAGED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void
FUNC4(vm_page_t m)
{

	FUNC0((m->oflags & VPO_UNMANAGED) == 0,
	    ("pmap_clear_modify: page %p is not managed", m));
	FUNC3(m);

	if (!FUNC2(m))
		return;
	if (m->md.pvh_attrs & PVF_MOD)
		FUNC1(m, PVF_MOD);
}