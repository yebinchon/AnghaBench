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
typedef  scalar_t__ u_char ;
struct timeval {int dummy; } ;
struct ssh {struct session_state* state; } ;
struct session_state {int packet_timeout_ms; scalar_t__ connection_in; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  fd_mask ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFDBITS ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_CONN_CLOSED ; 
 int SSH_ERR_CONN_TIMEOUT ; 
 int SSH_ERR_SYSTEM_ERROR ; 
 scalar_t__ SSH_MSG_NONE ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC8 (struct timeval*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct timeval*,int) ; 
 int FUNC10 (scalar_t__,char*,int) ; 
 int FUNC11 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int FUNC12 (struct ssh*,char*,int) ; 
 int FUNC13 (struct ssh*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct ssh*) ; 

int
FUNC15(struct ssh *ssh, u_char *typep, u_int32_t *seqnr_p)
{
	struct session_state *state = ssh->state;
	int len, r, ms_remain;
	fd_set *setp;
	char buf[8192];
	struct timeval timeout, start, *timeoutp = NULL;

	FUNC0(FUNC3("packet_read()"));

	setp = FUNC2(FUNC5(state->connection_in + 1,
	    NFDBITS), sizeof(fd_mask));
	if (setp == NULL)
		return SSH_ERR_ALLOC_FAIL;

	/*
	 * Since we are blocking, ensure that all written packets have
	 * been sent.
	 */
	if ((r = FUNC14(ssh)) != 0)
		goto out;

	/* Stay in the loop until we have received a complete packet. */
	for (;;) {
		/* Try to read a packet from the buffer. */
		r = FUNC13(ssh, typep, seqnr_p);
		if (r != 0)
			break;
		/* If we got a packet, return it. */
		if (*typep != SSH_MSG_NONE)
			break;
		/*
		 * Otherwise, wait for some data to arrive, add it to the
		 * buffer, and try again.
		 */
		FUNC6(setp, 0, FUNC5(state->connection_in + 1,
		    NFDBITS) * sizeof(fd_mask));
		FUNC1(state->connection_in, setp);

		if (state->packet_timeout_ms > 0) {
			ms_remain = state->packet_timeout_ms;
			timeoutp = &timeout;
		}
		/* Wait for some data to arrive. */
		for (;;) {
			if (state->packet_timeout_ms != -1) {
				FUNC9(&timeout, ms_remain);
				FUNC7(&start);
			}
			if ((r = FUNC11(state->connection_in + 1, setp,
			    NULL, NULL, timeoutp)) >= 0)
				break;
			if (errno != EAGAIN && errno != EINTR &&
			    errno != EWOULDBLOCK) {
				r = SSH_ERR_SYSTEM_ERROR;
				goto out;
			}
			if (state->packet_timeout_ms == -1)
				continue;
			FUNC8(&start, &ms_remain);
			if (ms_remain <= 0) {
				r = 0;
				break;
			}
		}
		if (r == 0) {
			r = SSH_ERR_CONN_TIMEOUT;
			goto out;
		}
		/* Read data from the socket. */
		len = FUNC10(state->connection_in, buf, sizeof(buf));
		if (len == 0) {
			r = SSH_ERR_CONN_CLOSED;
			goto out;
		}
		if (len < 0) {
			r = SSH_ERR_SYSTEM_ERROR;
			goto out;
		}

		/* Append it to the buffer. */
		if ((r = FUNC12(ssh, buf, len)) != 0)
			goto out;
	}
 out:
	FUNC4(setp);
	return r;
}