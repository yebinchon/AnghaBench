#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ attributes; } ;
struct session_state {int /*<<< orphan*/  session_handle; TYPE_1__ find; } ;
struct TYPE_4__ {void* notify; void* application; } ;

/* Variables and functions */
 int /*<<< orphan*/  CK_INVALID_HANDLE ; 
 void* NULL_PTR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct session_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct session_state*) ; 
 TYPE_2__ soft_token ; 

__attribute__((used)) static void
FUNC3(struct session_state *state)
{
    if (state->find.attributes) {
	FUNC0("application didn't do C_FindObjectsFinal\n");
	FUNC1(state);
    }

    state->session_handle = CK_INVALID_HANDLE;
    soft_token.application = NULL_PTR;
    soft_token.notify = NULL_PTR;
    FUNC2(state);
}