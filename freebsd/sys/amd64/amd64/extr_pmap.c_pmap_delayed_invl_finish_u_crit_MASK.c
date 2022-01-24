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
typedef  scalar_t__ u_long ;
struct pmap_invl_gen {scalar_t__ gen; struct pmap_invl_gen* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 uintptr_t PMAP_INVL_GEN_NEXT_INVALID ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct pmap_invl_gen*,struct pmap_invl_gen*) ; 
 int FUNC4 (struct pmap_invl_gen*,struct pmap_invl_gen*,struct pmap_invl_gen*) ; 

__attribute__((used)) static bool
FUNC5(struct pmap_invl_gen *invl_gen,
    struct pmap_invl_gen *p)
{
	struct pmap_invl_gen prev, new_prev;
	u_long mygen;

	/*
	 * Load invl_gen->gen after setting invl_gen->next
	 * PMAP_INVL_GEN_NEXT_INVALID.  This prevents larger
	 * generations to propagate to our invl_gen->gen.  Lock prefix
	 * in atomic_set_ptr() worked as seq_cst fence.
	 */
	mygen = FUNC1(&invl_gen->gen);

	if (!FUNC3(p, &prev) || prev.next != invl_gen)
		return (false);

	FUNC0(prev.gen < mygen,
	    ("invalid di gen sequence %lu %lu", prev.gen, mygen));
	new_prev.gen = mygen;
	new_prev.next = (void *)((uintptr_t)invl_gen->next &
	    ~PMAP_INVL_GEN_NEXT_INVALID);

	/* Formal fence between load of prev and storing update to it. */
	FUNC2();

	return (FUNC4(p, &prev, &new_prev));
}