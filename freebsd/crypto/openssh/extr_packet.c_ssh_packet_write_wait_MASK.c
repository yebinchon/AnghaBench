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
struct timeval {int dummy; } ;
struct ssh {struct session_state* state; } ;
struct session_state {int packet_timeout_ms; scalar_t__ connection_out; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  fd_mask ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFDBITS ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_CONN_TIMEOUT ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC6 (struct timeval*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct timeval*,int) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 scalar_t__ FUNC9 (struct ssh*) ; 
 int FUNC10 (struct ssh*) ; 

int
FUNC11(struct ssh *ssh)
{
	fd_set *setp;
	int ret, r, ms_remain = 0;
	struct timeval start, timeout, *timeoutp = NULL;
	struct session_state *state = ssh->state;

	setp = FUNC1(FUNC3(state->connection_out + 1,
	    NFDBITS), sizeof(fd_mask));
	if (setp == NULL)
		return SSH_ERR_ALLOC_FAIL;
	if ((r = FUNC10(ssh)) != 0) {
		FUNC2(setp);
		return r;
	}
	while (FUNC9(ssh)) {
		FUNC4(setp, 0, FUNC3(state->connection_out + 1,
		    NFDBITS) * sizeof(fd_mask));
		FUNC0(state->connection_out, setp);

		if (state->packet_timeout_ms > 0) {
			ms_remain = state->packet_timeout_ms;
			timeoutp = &timeout;
		}
		for (;;) {
			if (state->packet_timeout_ms != -1) {
				FUNC7(&timeout, ms_remain);
				FUNC5(&start);
			}
			if ((ret = FUNC8(state->connection_out + 1,
			    NULL, setp, NULL, timeoutp)) >= 0)
				break;
			if (errno != EAGAIN && errno != EINTR &&
			    errno != EWOULDBLOCK)
				break;
			if (state->packet_timeout_ms == -1)
				continue;
			FUNC6(&start, &ms_remain);
			if (ms_remain <= 0) {
				ret = 0;
				break;
			}
		}
		if (ret == 0) {
			FUNC2(setp);
			return SSH_ERR_CONN_TIMEOUT;
		}
		if ((r = FUNC10(ssh)) != 0) {
			FUNC2(setp);
			return r;
		}
	}
	FUNC2(setp);
	return 0;
}