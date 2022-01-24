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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
typedef  int /*<<< orphan*/  pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spglist*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spglist*,struct rwlock**) ; 
 int /*<<< orphan*/  FUNC4 (struct spglist*,int) ; 

__attribute__((used)) static void
FUNC5(pmap_t pmap, vm_offset_t va, pt_entry_t *l2,
    struct rwlock **lockp)
{
	struct spglist free;

	FUNC0(&free);
	(void)FUNC3(pmap, l2, va, FUNC2(FUNC1(pmap, va)), &free,
	    lockp);
	FUNC4(&free, true);
}