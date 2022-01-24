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
struct terminate_state {int gotclosecb; int /*<<< orphan*/  base; int /*<<< orphan*/ * req; scalar_t__ oneshot; } ;
struct evhttp_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct evhttp_connection *evcon, void *arg)
{
	struct terminate_state *state = arg;
	state->gotclosecb = 1;

	/** TODO: though we can do this unconditionally */
	if (state->oneshot) {
		FUNC1(state->req);
		state->req = NULL;
		FUNC0(state->base,NULL);
	}
}