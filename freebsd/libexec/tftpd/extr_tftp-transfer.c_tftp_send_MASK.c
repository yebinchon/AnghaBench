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
typedef  int uint16_t ;
struct tftphdr {scalar_t__ th_opcode; int th_block; } ;
struct tftp_stats {int /*<<< orphan*/  tstop; int /*<<< orphan*/  rollovers; int /*<<< orphan*/  retries; scalar_t__ amount; int /*<<< orphan*/  blocks; } ;
struct TYPE_2__ {int /*<<< orphan*/ * o_request; } ;

/* Variables and functions */
 scalar_t__ ACK ; 
 int DEBUG_SIMPLE ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int MAXPKTSIZE ; 
 size_t OPT_ROLLOVER ; 
 int RP_TIMEOUT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int debug ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int maxtimeouts ; 
 TYPE_1__* options ; 
 int FUNC2 (char*,int) ; 
 int FUNC3 (int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int segsize ; 
 int FUNC5 (int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  timeoutpacket ; 

void
FUNC9(int peer, uint16_t *block, struct tftp_stats *ts)
{
	struct tftphdr *rp;
	int size, n_data, n_ack, try;
	uint16_t oldblock;
	char sendbuffer[MAXPKTSIZE];
	char recvbuffer[MAXPKTSIZE];

	rp = (struct tftphdr *)recvbuffer;
	*block = 1;
	ts->amount = 0;
	do {
		if (debug&DEBUG_SIMPLE)
			FUNC8(LOG_DEBUG, "Sending block %d", *block);

		size = FUNC2(sendbuffer, segsize);
		if (size < 0) {
			FUNC8(LOG_ERR, "read_file returned %d", size);
			FUNC6(peer, errno + 100);
			goto abort;
		}

		for (try = 0; ; try++) {
			n_data = FUNC5(peer, *block, sendbuffer, size);
			if (n_data > 0) {
				if (try == maxtimeouts) {
					FUNC8(LOG_ERR,
					    "Cannot send DATA packet #%d, "
					    "giving up", *block);
					return;
				}
				FUNC8(LOG_ERR,
				    "Cannot send DATA packet #%d, trying again",
				    *block);
				continue;
			}

			n_ack = FUNC3(peer, recvbuffer,
			    MAXPKTSIZE, NULL, timeoutpacket);
			if (n_ack < 0) {
				if (n_ack == RP_TIMEOUT) {
					if (try == maxtimeouts) {
						FUNC8(LOG_ERR,
						    "Timeout #%d send ACK %d "
						    "giving up", try, *block);
						return;
					}
					FUNC8(LOG_WARNING,
					    "Timeout #%d on ACK %d",
					    try, *block);
					continue;
				}

				/* Either read failure or ERROR packet */
				if (debug&DEBUG_SIMPLE)
					FUNC8(LOG_ERR, "Aborting: %s",
					    FUNC4(n_ack));
				goto abort;
			}
			if (rp->th_opcode == ACK) {
				ts->blocks++;
				if (rp->th_block == *block) {
					ts->amount += size;
					break;
				}

				/* Re-synchronize with the other side */
				(void) FUNC7(peer);
				if (rp->th_block == (*block - 1)) {
					ts->retries++;
					continue;
				}
			}

		}
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
		FUNC1(&(ts->tstop), NULL);
	} while (size == segsize);
abort:
	return;
}