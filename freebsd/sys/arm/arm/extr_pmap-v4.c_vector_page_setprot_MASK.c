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
struct l2_bucket {int* l2b_kva; } ;
typedef  int pt_entry_t ;

/* Variables and functions */
 int L1_S_PROT_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PTE_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kernel_pmap ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 struct l2_bucket* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vector_page ; 

void
FUNC6(int prot)
{
	struct l2_bucket *l2b;
	pt_entry_t *ptep;

	l2b = FUNC5(kernel_pmap, vector_page);

	ptep = &l2b->l2b_kva[FUNC4(vector_page)];

	*ptep = (*ptep & ~L1_S_PROT_MASK) | FUNC0(PTE_KERNEL, prot);
	FUNC1(ptep);
	FUNC3(vector_page);
	FUNC2();
}