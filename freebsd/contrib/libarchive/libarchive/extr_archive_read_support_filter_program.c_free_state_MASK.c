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
struct program_bidder {struct program_bidder* signature; struct program_bidder* cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct program_bidder*) ; 

__attribute__((used)) static void
FUNC1(struct program_bidder *state)
{

	if (state) {
		FUNC0(state->cmd);
		FUNC0(state->signature);
		FUNC0(state);
	}
}