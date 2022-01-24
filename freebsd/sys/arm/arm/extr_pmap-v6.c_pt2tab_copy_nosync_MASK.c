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
typedef  int u_int ;
typedef  int /*<<< orphan*/  pt2_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC2(pt2_entry_t *spte2p, pt2_entry_t *dpte2p, vm_offset_t sva,
    vm_offset_t eva)
{
	u_int idx, count;

	idx = FUNC1(sva);
	count = (FUNC1(eva) - idx + 1) * sizeof(pt2_entry_t);
	FUNC0(spte2p + idx, dpte2p + idx, count);
}