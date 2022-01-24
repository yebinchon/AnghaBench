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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int* u_int ;
typedef  int u_char ;
struct ssh {struct session_state* state; } ;
struct session_state {int /*<<< orphan*/  server_side; scalar_t__ keep_alive_timeouts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int* SSH2_DISCONNECT_BY_APPLICATION ; 
#define  SSH2_MSG_DEBUG 131 
#define  SSH2_MSG_DISCONNECT 130 
#define  SSH2_MSG_IGNORE 129 
#define  SSH2_MSG_UNIMPLEMENTED 128 
 int SSH_ERR_DISCONNECTED ; 
 int /*<<< orphan*/  SYSLOG_LEVEL_ERROR ; 
 int /*<<< orphan*/  SYSLOG_LEVEL_INFO ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int FUNC5 (struct ssh*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC7 (struct ssh*) ; 
 int FUNC8 (struct ssh*,int**,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct ssh*,int**) ; 
 int FUNC10 (struct ssh*,int /*<<< orphan*/ *) ; 

int
FUNC11(struct ssh *ssh, u_char *typep, u_int32_t *seqnr_p)
{
	struct session_state *state = ssh->state;
	u_int reason, seqnr;
	int r;
	u_char *msg;

	for (;;) {
		msg = NULL;
		r = FUNC5(ssh, typep, seqnr_p);
		if (r != 0)
			return r;
		if (*typep) {
			state->keep_alive_timeouts = 0;
			FUNC0(FUNC1("received packet type %d", *typep));
		}
		switch (*typep) {
		case SSH2_MSG_IGNORE:
			FUNC2("Received SSH2_MSG_IGNORE");
			break;
		case SSH2_MSG_DEBUG:
			if ((r = FUNC10(ssh, NULL)) != 0 ||
			    (r = FUNC8(ssh, &msg, NULL)) != 0 ||
			    (r = FUNC8(ssh, NULL, NULL)) != 0) {
				FUNC4(msg);
				return r;
			}
			FUNC1("Remote: %.900s", msg);
			FUNC4(msg);
			break;
		case SSH2_MSG_DISCONNECT:
			if ((r = FUNC9(ssh, &reason)) != 0 ||
			    (r = FUNC8(ssh, &msg, NULL)) != 0)
				return r;
			/* Ignore normal client exit notifications */
			FUNC3(ssh->state->server_side &&
			    reason == SSH2_DISCONNECT_BY_APPLICATION ?
			    SYSLOG_LEVEL_INFO : SYSLOG_LEVEL_ERROR,
			    "Received disconnect from %s port %d:"
			    "%u: %.400s", FUNC6(ssh),
			    FUNC7(ssh), reason, msg);
			FUNC4(msg);
			return SSH_ERR_DISCONNECTED;
		case SSH2_MSG_UNIMPLEMENTED:
			if ((r = FUNC9(ssh, &seqnr)) != 0)
				return r;
			FUNC1("Received SSH2_MSG_UNIMPLEMENTED for %u",
			    seqnr);
			break;
		default:
			return 0;
		}
	}
}