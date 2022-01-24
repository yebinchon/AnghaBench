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
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_4__ {int oflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int VPO_UNMANAGED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

boolean_t
FUNC2(vm_page_t m)
{

	FUNC0((m->oflags & VPO_UNMANAGED) == 0,
	    ("pmap_is_referenced: page %p is not managed", m));
	return (FUNC1(m, TRUE, FALSE));
}