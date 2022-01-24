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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 void* EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ IB_MAD_SIZE ; 
 int /*<<< orphan*/  IB_MAD_TRID_F ; 
 int errno ; 
 int ibdebug ; 
 scalar_t__ FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,void*,int) ; 
 scalar_t__ save_mad ; 
 int save_mad_len ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 scalar_t__ FUNC8 (int,void*,int*,int) ; 
 scalar_t__ FUNC9 (int,int,void*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 () ; 
 int FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,void*,scalar_t__) ; 

__attribute__((used)) static int
FUNC13(int port_id, void *sndbuf, void *rcvbuf, int agentid, int len,
	   int timeout, int max_retries, int *p_error)
{
	uint32_t trid;		/* only low 32 bits - see mad_trid() */
	int retries;
	int length, status;

	if (ibdebug > 1) {
		FUNC1(">>> sending: len %d pktsz %zu", len, FUNC10() + len);
		FUNC12(stderr, "send buf\n", sndbuf, FUNC10() + len);
	}

	if (save_mad) {
		FUNC3(save_mad, FUNC6(sndbuf),
		       save_mad_len < len ? save_mad_len : len);
		save_mad = 0;
	}

	if (max_retries <= 0) {
		errno = EINVAL;
		*p_error = EINVAL;
		FUNC0("max_retries %d <= 0", max_retries);
		return -1;
	}

	trid =
	    (uint32_t) FUNC2(FUNC6(sndbuf), 0, IB_MAD_TRID_F);

	for (retries = 0; retries < max_retries; retries++) {
		if (retries)
			FUNC0("retry %d (timeout %d ms)", retries, timeout);

		length = len;
		if (FUNC9(port_id, agentid, sndbuf, length, timeout, 0) < 0) {
			FUNC1("send failed; %s", FUNC4(errno));
			return -1;
		}

		/* Use same timeout on receive side just in case */
		/* send packet is lost somewhere. */
		do {
			length = len;
			if (FUNC8(port_id, rcvbuf, &length, timeout) < 0) {
				FUNC1("recv failed: %s", FUNC4(errno));
				return -1;
			}

			if (ibdebug > 2)
				FUNC5(FUNC7(rcvbuf));
			if (ibdebug > 1) {
				FUNC1("rcv buf:");
				FUNC12(stderr, "rcv buf\n", FUNC6(rcvbuf),
				      IB_MAD_SIZE);
			}
		} while ((uint32_t)
			 FUNC2(FUNC6(rcvbuf), 0,
					 IB_MAD_TRID_F) != trid);

		status = FUNC11(rcvbuf);
		if (!status)
			return length;	/* done */
		if (status == ENOMEM)
			return length;
	}

	errno = status;
	*p_error = ETIMEDOUT;
	FUNC0("timeout after %d retries, %d ms", retries, timeout * retries);
	return -1;
}