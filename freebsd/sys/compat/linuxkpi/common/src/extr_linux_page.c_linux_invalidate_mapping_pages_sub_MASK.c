#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_pindex_t ;
typedef  int vm_ooffset_t ;
typedef  TYPE_1__* vm_object_t ;
struct TYPE_6__ {int resident_page_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static vm_ooffset_t
FUNC3(vm_object_t obj, vm_pindex_t start,
    vm_pindex_t end, int flags)
{
	int start_count, end_count;

	FUNC0(obj);
	start_count = obj->resident_page_count;
	FUNC2(obj, start, end, flags);
	end_count = obj->resident_page_count;
	FUNC1(obj);
	return (start_count - end_count);
}