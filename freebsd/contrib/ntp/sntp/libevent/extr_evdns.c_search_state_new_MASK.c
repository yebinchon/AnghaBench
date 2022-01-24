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
struct search_state {int refcount; int ndots; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct search_state*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static struct search_state *
FUNC2(void) {
	struct search_state *state = (struct search_state *) FUNC1(sizeof(struct search_state));
	if (!state) return NULL;
	FUNC0(state, 0, sizeof(struct search_state));
	state->refcount = 1;
	state->ndots = 1;

	return state;
}