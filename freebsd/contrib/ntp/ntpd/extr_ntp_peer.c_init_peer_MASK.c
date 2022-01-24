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

/* Variables and functions */
 int ASSOCID_MAX ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int current_association_ID ; 
 int /*<<< orphan*/ * init_peer_alloc ; 
 int initial_association_ID ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  p_link ; 
 int /*<<< orphan*/  peer_free ; 
 int peer_free_count ; 
 int total_peer_structs ; 

void
FUNC3(void)
{
	int i;

	/*
	 * Initialize peer free list from static allocation.
	 */
	for (i = FUNC0(init_peer_alloc) - 1; i >= 0; i--)
		FUNC1(peer_free, &init_peer_alloc[i], p_link);
	total_peer_structs = FUNC0(init_peer_alloc);
	peer_free_count = FUNC0(init_peer_alloc);

	/*
	 * Initialize our first association ID
	 */
	do
		current_association_ID = FUNC2() & ASSOCID_MAX;
	while (!current_association_ID);
	initial_association_ID = current_association_ID;
}