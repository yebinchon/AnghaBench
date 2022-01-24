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
typedef  int /*<<< orphan*/  vm_prot_t ;
typedef  int /*<<< orphan*/  u_long ;
struct i386_iter {int dummy; } ;
typedef  int /*<<< orphan*/  kvm_walk_pages_cb_t ;
typedef  int /*<<< orphan*/  kvm_t ;

/* Variables and functions */
 int /*<<< orphan*/  I386_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct i386_iter*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct i386_iter*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(kvm_t *kd, kvm_walk_pages_cb_t *cb, void *arg)
{
	struct i386_iter it;
	u_long dva, pa, va;
	vm_prot_t prot;

	FUNC0(&it, kd);
	while (FUNC1(&it, &pa, &va, &dva, &prot)) {
		if (!FUNC2(kd, cb, arg, pa, va, dva,
		    prot, I386_PAGE_SIZE, 0)) {
			return (0);
		}
	}
	return (1);
}