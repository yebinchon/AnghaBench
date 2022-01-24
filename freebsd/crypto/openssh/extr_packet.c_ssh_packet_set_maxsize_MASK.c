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
typedef  int u_int ;
struct ssh {struct session_state* state; } ;
struct session_state {int set_maxsize_called; int max_packet_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 

int
FUNC2(struct ssh *ssh, u_int s)
{
	struct session_state *state = ssh->state;

	if (state->set_maxsize_called) {
		FUNC1("packet_set_maxsize: called twice: old %d new %d",
		    state->max_packet_size, s);
		return -1;
	}
	if (s < 4 * 1024 || s > 1024 * 1024) {
		FUNC1("packet_set_maxsize: bad size %d", s);
		return -1;
	}
	state->set_maxsize_called = 1;
	FUNC0("packet_set_maxsize: setting to %d", s);
	state->max_packet_size = s;
	return s;
}