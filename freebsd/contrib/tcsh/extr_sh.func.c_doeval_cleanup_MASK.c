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
struct doeval_state {scalar_t__ saveIN; scalar_t__ saveOUT; scalar_t__ saveDIAG; int /*<<< orphan*/  SHDIAG; int /*<<< orphan*/  SHOUT; int /*<<< orphan*/  SHIN; scalar_t__ didfds; int /*<<< orphan*/  didcch; int /*<<< orphan*/  evalp; int /*<<< orphan*/  evalvec; } ;

/* Variables and functions */
 scalar_t__ SHDIAG ; 
 scalar_t__ SHIN ; 
 scalar_t__ SHOUT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  didcch ; 
 scalar_t__ didfds ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ doneinp ; 
 int /*<<< orphan*/  evalp ; 
 int /*<<< orphan*/  evalvec ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void
FUNC4(void *xstate)
{
    struct doeval_state *state;

    state = xstate;
    evalvec = state->evalvec;
    evalp = state->evalp;
    doneinp = 0;
#ifndef CLOSE_ON_EXEC
    didcch = state->didcch;
#endif /* CLOSE_ON_EXEC */
    didfds = state->didfds;
    if (state->saveIN != SHIN)
	FUNC3(SHIN);
    if (state->saveOUT != SHOUT)
	FUNC3(SHOUT);
    if (state->saveDIAG != SHDIAG)
	FUNC3(SHDIAG);
    FUNC0(SHIN = FUNC2(state->saveIN, state->SHIN), 1);
    FUNC0(SHOUT = FUNC2(state->saveOUT, state->SHOUT), 1);
    FUNC0(SHDIAG = FUNC2(state->saveDIAG, state->SHDIAG), 1);
    if (didfds) {
	FUNC0(FUNC1(SHIN, 0), 1);
	FUNC0(FUNC1(SHOUT, 1), 1);
	FUNC0(FUNC1(SHDIAG, 2), 1);
    }
}