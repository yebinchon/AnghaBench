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
typedef  int /*<<< orphan*/  u_short ;
struct tftphdr {char* th_msg; void* th_code; void* th_opcode; } ;
struct sockaddr {int dummy; } ;
struct errmsg {int e_code; int e_msg; } ;
struct TYPE_2__ {int /*<<< orphan*/  ss_len; } ;

/* Variables and functions */
 int DEBUG_PACKETS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ERROR ; 
 void* EUNDEF ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int MAXPKTSIZE ; 
 int debug ; 
 struct errmsg* errmsgs ; 
 int errno ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ peer_sock ; 
 int FUNC2 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 

void
FUNC7(int peer, int error)
{
	struct tftphdr *tp;
	int length;
	struct errmsg *pe;
	char buf[MAXPKTSIZE];

	if (debug&DEBUG_PACKETS)
		FUNC6(LOG_DEBUG, "Sending ERROR %d", error);

	FUNC0("send_error");

	tp = (struct tftphdr *)buf;
	tp->th_opcode = FUNC1((u_short)ERROR);
	tp->th_code = FUNC1((u_short)error);
	for (pe = errmsgs; pe->e_code >= 0; pe++)
		if (pe->e_code == error)
			break;
	if (pe->e_code < 0) {
		pe->e_msg = FUNC4(error - 100);
		tp->th_code = EUNDEF;   /* set 'undef' errorcode */
	}
	FUNC3(tp->th_msg, pe->e_msg);
	length = FUNC5(pe->e_msg);
	tp->th_msg[length] = '\0';
	length += 5;

	if (debug&DEBUG_PACKETS)
		FUNC6(LOG_DEBUG, "Sending ERROR %d: %s", error, tp->th_msg);

	if (FUNC2(peer, buf, length, 0,
		(struct sockaddr *)&peer_sock, peer_sock.ss_len) != length)
		FUNC6(LOG_ERR, "send_error: %s", FUNC4(errno));
}