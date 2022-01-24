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
struct vm_area_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  linux_vma_head ; 
 int /*<<< orphan*/  linux_vma_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vm_entry ; 

__attribute__((used)) static void
FUNC3(struct vm_area_struct *vmap)
{
	FUNC1(&linux_vma_lock);
	FUNC0(&linux_vma_head, vmap, vm_entry);
	FUNC2(&linux_vma_lock);
}