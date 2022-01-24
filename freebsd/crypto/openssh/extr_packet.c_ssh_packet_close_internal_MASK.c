#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* z_streamp ;
typedef  size_t u_int ;
struct ssh {struct session_state* state; struct session_state* remote_ipaddr; struct session_state* local_ipaddr; } ;
struct TYPE_4__ {double total_in; double total_out; } ;
struct session_state {scalar_t__ connection_in; scalar_t__ connection_out; scalar_t__ compression_out_failures; scalar_t__ compression_in_failures; int /*<<< orphan*/ * receive_context; int /*<<< orphan*/ * send_context; TYPE_1__ compression_in_stream; scalar_t__ compression_in_started; TYPE_1__ compression_out_stream; scalar_t__ compression_out_started; scalar_t__ compression_buffer; int /*<<< orphan*/ ** newkeys; scalar_t__ incoming_packet; scalar_t__ outgoing_packet; scalar_t__ output; scalar_t__ input; scalar_t__ initialized; } ;

/* Variables and functions */
 size_t MODE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long long,unsigned long long,double) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct session_state*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ssh*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static void
FUNC9(struct ssh *ssh, int do_close)
{
	struct session_state *state = ssh->state;
	u_int mode;

	if (!state->initialized)
		return;
	state->initialized = 0;
	if (do_close) {
		if (state->connection_in == state->connection_out) {
			FUNC1(state->connection_out);
		} else {
			FUNC1(state->connection_in);
			FUNC1(state->connection_out);
		}
	}
	FUNC8(state->input);
	FUNC8(state->output);
	FUNC8(state->outgoing_packet);
	FUNC8(state->incoming_packet);
	for (mode = 0; mode < MODE_MAX; mode++) {
		FUNC6(state->newkeys[mode]);	/* current keys */
		state->newkeys[mode] = NULL;
		FUNC7(ssh, mode);		/* next keys */
	}
	/* compression state is in shared mem, so we can only release it once */
	if (do_close && state->compression_buffer) {
		FUNC8(state->compression_buffer);
		if (state->compression_out_started) {
			z_streamp stream = &state->compression_out_stream;
			FUNC2("compress outgoing: "
			    "raw data %llu, compressed %llu, factor %.2f",
				(unsigned long long)stream->total_in,
				(unsigned long long)stream->total_out,
				stream->total_in == 0 ? 0.0 :
				(double) stream->total_out / stream->total_in);
			if (state->compression_out_failures == 0)
				FUNC3(stream);
		}
		if (state->compression_in_started) {
			z_streamp stream = &state->compression_in_stream;
			FUNC2("compress incoming: "
			    "raw data %llu, compressed %llu, factor %.2f",
			    (unsigned long long)stream->total_out,
			    (unsigned long long)stream->total_in,
			    stream->total_out == 0 ? 0.0 :
			    (double) stream->total_in / stream->total_out);
			if (state->compression_in_failures == 0)
				FUNC5(stream);
		}
	}
	FUNC0(state->send_context);
	FUNC0(state->receive_context);
	state->send_context = state->receive_context = NULL;
	if (do_close) {
		FUNC4(ssh->local_ipaddr);
		ssh->local_ipaddr = NULL;
		FUNC4(ssh->remote_ipaddr);
		ssh->remote_ipaddr = NULL;
		FUNC4(ssh->state);
		ssh->state = NULL;
	}
}