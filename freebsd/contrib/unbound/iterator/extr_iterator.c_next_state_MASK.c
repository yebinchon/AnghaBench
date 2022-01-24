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
struct iter_qstate {int state; int /*<<< orphan*/ * response; } ;
typedef  enum iter_state { ____Placeholder_iter_state } iter_state ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2(struct iter_qstate* iq, enum iter_state nextstate)
{
	/* If transitioning to a "response" state, make sure that there is a
	 * response */
	if(FUNC0(nextstate)) {
		if(iq->response == NULL) {
			FUNC1("transitioning to response state sans "
				"response.");
		}
	}
	iq->state = nextstate;
	return 1;
}