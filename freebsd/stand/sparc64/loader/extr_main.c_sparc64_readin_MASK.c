#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* mmu_mapin ) (scalar_t__,size_t const) ;} ;

/* Variables and functions */
 TYPE_1__* mmu_ops ; 
 int /*<<< orphan*/  FUNC0 (int const,void*,size_t const) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,size_t const) ; 

__attribute__((used)) static ssize_t
FUNC2(const int fd, vm_offset_t va, const size_t len)
{

	mmu_ops->mmu_mapin(va, len);
	return (FUNC0(fd, (void *)va, len));
}