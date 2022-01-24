#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sshcomp {int enabled; scalar_t__ type; } ;
struct ssh {struct session_state* state; } ;
struct session_state {int after_authentication; TYPE_1__** newkeys; } ;
struct TYPE_2__ {struct sshcomp comp; } ;

/* Variables and functions */
 scalar_t__ COMP_DELAYED ; 
 int MODE_MAX ; 
 int MODE_OUT ; 
 int FUNC0 (struct ssh*) ; 
 int FUNC1 (struct ssh*) ; 
 int FUNC2 (struct ssh*,int) ; 

__attribute__((used)) static int
FUNC3(struct ssh *ssh)
{
	struct session_state *state = ssh->state;
	struct sshcomp *comp = NULL;
	int r, mode;

	/*
	 * Remember that we are past the authentication step, so rekeying
	 * with COMP_DELAYED will turn on compression immediately.
	 */
	state->after_authentication = 1;
	for (mode = 0; mode < MODE_MAX; mode++) {
		/* protocol error: USERAUTH_SUCCESS received before NEWKEYS */
		if (state->newkeys[mode] == NULL)
			continue;
		comp = &state->newkeys[mode]->comp;
		if (comp && !comp->enabled && comp->type == COMP_DELAYED) {
			if ((r = FUNC0(ssh)) != 0)
				return r;
			if (mode == MODE_OUT) {
				if ((r = FUNC2(ssh, 6)) != 0)
					return r;
			} else {
				if ((r = FUNC1(ssh)) != 0)
					return r;
			}
			comp->enabled = 1;
		}
	}
	return 0;
}