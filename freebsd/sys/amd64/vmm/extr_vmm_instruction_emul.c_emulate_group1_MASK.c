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
typedef  int /*<<< orphan*/  uint64_t ;
struct vm_guest_paging {int dummy; } ;
struct vie {int reg; } ;
typedef  int /*<<< orphan*/  mem_region_write_t ;
typedef  int /*<<< orphan*/  mem_region_read_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (void*,int,int /*<<< orphan*/ ,struct vie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC1 (void*,int,int /*<<< orphan*/ ,struct vie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC2 (void*,int,int /*<<< orphan*/ ,struct vie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int
FUNC3(void *vm, int vcpuid, uint64_t gpa, struct vie *vie,
    struct vm_guest_paging *paging, mem_region_read_t memread,
    mem_region_write_t memwrite, void *memarg)
{
	int error;

	switch (vie->reg & 7) {
	case 0x1:	/* OR */
		error = FUNC2(vm, vcpuid, gpa, vie,
		    memread, memwrite, memarg);
		break;
	case 0x4:	/* AND */
		error = FUNC0(vm, vcpuid, gpa, vie,
		    memread, memwrite, memarg);
		break;
	case 0x7:	/* CMP */
		error = FUNC1(vm, vcpuid, gpa, vie,
		    memread, memwrite, memarg);
		break;
	default:
		error = EINVAL;
		break;
	}

	return (error);
}