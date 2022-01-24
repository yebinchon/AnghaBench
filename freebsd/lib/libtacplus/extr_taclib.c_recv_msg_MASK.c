#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
struct timeval {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_6__ {struct tac_msg* body; } ;
struct tac_msg {scalar_t__ type; scalar_t__ seq_no; int flags; TYPE_3__ u; int /*<<< orphan*/  length; int /*<<< orphan*/  session_id; } ;
struct TYPE_5__ {scalar_t__ type; int /*<<< orphan*/  session_id; } ;
struct tac_handle {size_t cur_server; scalar_t__ last_seq_no; scalar_t__ single_connect; TYPE_2__ request; TYPE_1__* servers; struct tac_msg response; } ;
struct TYPE_4__ {scalar_t__ timeout; } ;

/* Variables and functions */
 scalar_t__ BODYSIZE ; 
 scalar_t__ HDRSIZE ; 
 int TAC_SINGLE_CONNECT ; 
 int /*<<< orphan*/  FUNC0 (struct tac_handle*,struct tac_msg*) ; 
 int /*<<< orphan*/  FUNC1 (struct tac_handle*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct tac_handle*,struct tac_msg*,scalar_t__,struct timeval*) ; 

__attribute__((used)) static int
FUNC6(struct tac_handle *h)
{
	struct timeval deadline;
	struct tac_msg *msg;
	u_int32_t len;

	msg = &h->response;
	FUNC2(&deadline, NULL);
	deadline.tv_sec += h->servers[h->cur_server].timeout;

	/* Read the message header and make sure it is reasonable. */
	if (FUNC5(h, msg, HDRSIZE, &deadline) == -1)
		return -1;
	if (FUNC3(msg->session_id, h->request.session_id,
	    sizeof msg->session_id) != 0) {
		FUNC1(h, "Invalid session ID in received message");
		return -1;
	}
	if (msg->type != h->request.type) {
		FUNC1(h, "Invalid type in received message"
			  " (got %u, expected %u)",
			  msg->type, h->request.type);
		return -1;
	}
	len = FUNC4(msg->length);
	if (len > BODYSIZE) {
		FUNC1(h, "Received message too large (%u > %u)",
			  len, BODYSIZE);
		return -1;
	}
	if (msg->seq_no != ++h->last_seq_no) {
		FUNC1(h, "Invalid sequence number in received message"
			  " (got %u, expected %u)",
			  msg->seq_no, h->last_seq_no);
		return -1;
	}

	/* Read the message body. */
	if (FUNC5(h, msg->u.body, len, &deadline) == -1)
		return -1;

	/* Decrypt it. */
	FUNC0(h, msg);

	/*
	 * Turn off single-connection mode if the server isn't amenable
	 * to it.
	 */
	if (!(msg->flags & TAC_SINGLE_CONNECT))
		h->single_connect = 0;
	return 0;
}