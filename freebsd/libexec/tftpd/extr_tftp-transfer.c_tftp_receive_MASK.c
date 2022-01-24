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
typedef  scalar_t__ uint16_t ;
struct tftphdr {scalar_t__ th_opcode; scalar_t__ th_block; int /*<<< orphan*/  th_data; } ;
struct tftp_stats {int /*<<< orphan*/  tstop; scalar_t__ amount; int /*<<< orphan*/  retries; int /*<<< orphan*/  blocks; int /*<<< orphan*/  rollovers; } ;
struct TYPE_2__ {int /*<<< orphan*/ * o_request; } ;

/* Variables and functions */
 scalar_t__ DATA ; 
 int DEBUG_SIMPLE ; 
 scalar_t__ ENOSPACE ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int MAXPKTSIZE ; 
 size_t OPT_ROLLOVER ; 
 int RP_TIMEOUT ; 
 scalar_t__ acting_as_client ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int debug ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int maxtimeouts ; 
 TYPE_1__* options ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int pktsize ; 
 int FUNC3 (int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 size_t segsize ; 
 int FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  timeoutpacket ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 

void
FUNC11(int peer, uint16_t *block, struct tftp_stats *ts,
    struct tftphdr *firstblock, size_t fb_size)
{
	struct tftphdr *rp;
	uint16_t oldblock;
	int n_data, n_ack, writesize, i, retry;
	char recvbuffer[MAXPKTSIZE];

	ts->amount = 0;

	if (firstblock != NULL) {
		writesize = FUNC10(firstblock->th_data, fb_size);
		ts->amount += writesize;
		for (i = 0; ; i++) {
			n_ack = FUNC5(peer, *block);
			if (n_ack > 0) {
				if (i == maxtimeouts) {
					FUNC8(LOG_ERR,
					    "Cannot send ACK packet #%d, "
					    "giving up", *block);
					return;
				}
				FUNC8(LOG_ERR,
				    "Cannot send ACK packet #%d, trying again",
				    *block);
				continue;
			}

			break;
		}

		if (fb_size != segsize) {
			FUNC1(&(ts->tstop), NULL);
			return;
		}
	}

	rp = (struct tftphdr *)recvbuffer;
	do {
		oldblock = *block;
		(*block)++;
		if (oldblock > *block) {
			if (options[OPT_ROLLOVER].o_request == NULL) {
				/*
				 * "rollover" option not specified in
				 * tftp client.  Default to rolling block
				 * counter to 0.
				 */
				*block = 0;
			} else {
				*block = FUNC0(options[OPT_ROLLOVER].o_request);
			}

			ts->rollovers++;
		}

		for (retry = 0; ; retry++) {
			if (debug&DEBUG_SIMPLE)
				FUNC8(LOG_DEBUG,
				    "Receiving DATA block %d", *block);

			n_data = FUNC3(peer, recvbuffer,
			    MAXPKTSIZE, NULL, timeoutpacket);
			if (n_data < 0) {
				if (retry == maxtimeouts) {
					FUNC8(LOG_ERR,
					    "Timeout #%d on DATA block %d, "
					    "giving up", retry, *block);
					return;
				}
				if (n_data == RP_TIMEOUT) {
					FUNC8(LOG_WARNING,
					    "Timeout #%d on DATA block %d",
					    retry, *block);
					FUNC5(peer, oldblock);
					continue;
				}

				/* Either read failure or ERROR packet */
				if (debug&DEBUG_SIMPLE)
					FUNC8(LOG_DEBUG, "Aborting: %s",
					    FUNC4(n_data));
				goto abort;
			}
			if (rp->th_opcode == DATA) {
				ts->blocks++;

				if (rp->th_block == *block)
					break;

				FUNC8(LOG_WARNING,
				    "Expected DATA block %d, got block %d",
				    *block, rp->th_block);

				/* Re-synchronize with the other side */
				(void) FUNC7(peer);
				if (rp->th_block == (*block-1)) {
					FUNC8(LOG_INFO, "Trying to sync");
					*block = oldblock;
					ts->retries++;
					goto send_ack;	/* rexmit */
				}

			} else {
				FUNC8(LOG_WARNING,
				    "Expected DATA block, got %s block",
				    FUNC2(rp->th_opcode));
			}
		}

		if (n_data > 0) {
			writesize = FUNC10(rp->th_data, n_data);
			ts->amount += writesize;
			if (writesize <= 0) {
				FUNC8(LOG_ERR,
				    "write_file returned %d", writesize);
				if (writesize < 0)
					FUNC6(peer, errno + 100);
				else
					FUNC6(peer, ENOSPACE);
				goto abort;
			}
			if (n_data != segsize)
				FUNC9();
		}

send_ack:
		for (i = 0; ; i++) {
			n_ack = FUNC5(peer, *block);
			if (n_ack > 0) {

				if (i == maxtimeouts) {
					FUNC8(LOG_ERR,
					    "Cannot send ACK packet #%d, "
					    "giving up", *block);
					return;
				}

				FUNC8(LOG_ERR,
				    "Cannot send ACK packet #%d, trying again",
				    *block);
				continue;
			}

			break;
		}
		FUNC1(&(ts->tstop), NULL);
	} while (n_data == segsize);

	/* Don't do late packet management for the client implementation */
	if (acting_as_client)
		return;

	for (i = 0; ; i++) {
		n_data = FUNC3(peer, (char *)rp, pktsize,
		    NULL, timeoutpacket);
		if (n_data <= 0)
			break;
		if (n_data > 0 &&
		    rp->th_opcode == DATA &&	/* and got a data block */
		    *block == rp->th_block)	/* then my last ack was lost */
			FUNC5(peer, *block);	/* resend final ack */
	}

abort:
	return;
}