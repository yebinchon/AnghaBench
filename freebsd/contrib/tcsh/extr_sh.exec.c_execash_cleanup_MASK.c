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
struct execash_state {int /*<<< orphan*/  OLDSTD; int /*<<< orphan*/  saveSTD; int /*<<< orphan*/  SHDIAG; int /*<<< orphan*/  saveDIAG; int /*<<< orphan*/  SHOUT; int /*<<< orphan*/  saveOUT; int /*<<< orphan*/  SHIN; int /*<<< orphan*/  saveIN; int /*<<< orphan*/  didfds; int /*<<< orphan*/  didcch; int /*<<< orphan*/  sigterm; int /*<<< orphan*/  sigquit; int /*<<< orphan*/  sigint; } ;

/* Variables and functions */
 int /*<<< orphan*/  OLDSTD ; 
 int /*<<< orphan*/  SHDIAG ; 
 int /*<<< orphan*/  SHIN ; 
 int /*<<< orphan*/  SHOUT ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  didcch ; 
 int /*<<< orphan*/  didfds ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ doneinp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *xstate)
{
    struct execash_state *state;

    state = xstate;
    FUNC2(SIGINT, &state->sigint, NULL);
    FUNC2(SIGQUIT, &state->sigquit, NULL);
    FUNC2(SIGTERM, &state->sigterm, NULL);

    doneinp = 0;
#ifndef CLOSE_ON_EXEC
    didcch = state->didcch;
#endif /* CLOSE_ON_EXEC */
    didfds = state->didfds;
    FUNC3(SHIN);
    FUNC3(SHOUT);
    FUNC3(SHDIAG);
    FUNC3(OLDSTD);
    FUNC0(SHIN = FUNC1(state->saveIN, state->SHIN), 1);
    FUNC0(SHOUT = FUNC1(state->saveOUT, state->SHOUT), 1);
    FUNC0(SHDIAG = FUNC1(state->saveDIAG, state->SHDIAG), 1);
    FUNC0(OLDSTD = FUNC1(state->saveSTD, state->OLDSTD), 1);
}