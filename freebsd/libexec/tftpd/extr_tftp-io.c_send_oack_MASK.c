#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
struct tftphdr {int /*<<< orphan*/  th_opcode; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {char* o_type; int /*<<< orphan*/ * o_reply; } ;
struct TYPE_3__ {int /*<<< orphan*/  ss_len; } ;

/* Variables and functions */
 int DEBUG_PACKETS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int MAXPKTSIZE ; 
 scalar_t__ OACK ; 
 int debug ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* options ; 
 TYPE_1__ peer_sock ; 
 int FUNC3 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

int
FUNC7(int peer)
{
	struct tftphdr *tp;
	int size, i, n;
	char *bp;
	char buf[MAXPKTSIZE];

	if (debug&DEBUG_PACKETS)
		FUNC6(LOG_DEBUG, "Sending OACK");

	FUNC0("send_oack", 0);

	/*
	 * Send back an options acknowledgement (only the ones with
	 * a reply for)
	 */
	tp = (struct tftphdr *)buf;
	bp = buf + 2;
	size = sizeof(buf) - 2;
	tp->th_opcode = FUNC2((u_short)OACK);
	for (i = 0; options[i].o_type != NULL; i++) {
		if (options[i].o_reply != NULL) {
			n = FUNC4(bp, size, "%s%c%s", options[i].o_type,
				     0, options[i].o_reply);
			bp += n+1;
			size -= n+1;
			if (size < 0) {
				FUNC6(LOG_ERR, "oack: buffer overflow");
				FUNC1(1);
			}
		}
	}
	size = bp - buf;

	if (FUNC3(peer, buf, size, 0,
		(struct sockaddr *)&peer_sock, peer_sock.ss_len) != size) {
		FUNC6(LOG_INFO, "send_oack: %s", FUNC5(errno));
		return (1);
	}

	return (0);
}