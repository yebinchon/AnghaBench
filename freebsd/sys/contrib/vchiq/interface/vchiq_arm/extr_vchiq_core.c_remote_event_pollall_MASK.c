#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* local; } ;
typedef  TYPE_2__ VCHIQ_STATE_T ;
struct TYPE_4__ {int /*<<< orphan*/  recycle; int /*<<< orphan*/  trigger; int /*<<< orphan*/  sync_release; int /*<<< orphan*/  sync_trigger; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void
FUNC1(VCHIQ_STATE_T *state)
{
	FUNC0(&state->local->sync_trigger);
	FUNC0(&state->local->sync_release);
	FUNC0(&state->local->trigger);
	FUNC0(&state->local->recycle);
}