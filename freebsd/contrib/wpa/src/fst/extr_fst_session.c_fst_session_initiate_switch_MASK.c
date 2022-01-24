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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  fsts_id; int /*<<< orphan*/ * new_iface; int /*<<< orphan*/ * old_iface; } ;
struct fst_session {TYPE_1__ data; int /*<<< orphan*/  group; int /*<<< orphan*/  state; } ;
struct fst_ack_req {int /*<<< orphan*/  fsts_id; int /*<<< orphan*/  dialog_token; int /*<<< orphan*/  action; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FST_ACTION_ACK_REQUEST ; 
 int /*<<< orphan*/  FST_SESSION_STATE_TRANSITION_DONE ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fst_session*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (struct fst_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct fst_session*) ; 
 int FUNC6 (struct fst_session*,int /*<<< orphan*/ ,struct fst_ack_req*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct fst_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct fst_session*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct fst_ack_req*,int /*<<< orphan*/ ,int) ; 

int FUNC11(struct fst_session *s)
{
	struct fst_ack_req req;
	int res;
	u8 dialog_token;

	if (!FUNC5(s)) {
		FUNC3(s, MSG_ERROR,
				   "cannot initiate switch due to wrong setup state (%d)",
				   s->state);
		return -1;
	}

	dialog_token = FUNC1(s->group);

	FUNC0(s->data.new_iface != NULL);
	FUNC0(s->data.old_iface != NULL);

	FUNC3(s, MSG_INFO, "initiating FST switch: %s => %s",
			   FUNC2(s->data.old_iface),
			   FUNC2(s->data.new_iface));

	FUNC10(&req, 0, sizeof(req));

	req.action = FST_ACTION_ACK_REQUEST;
	req.dialog_token = dialog_token;
	req.fsts_id = FUNC9(s->data.fsts_id);

	res = FUNC6(s, FALSE, &req, sizeof(req), NULL);
	if (!res) {
		FUNC4(s, FALSE, MSG_INFO, "FST Ack Request sent");
		FUNC7(s, FST_SESSION_STATE_TRANSITION_DONE,
				      NULL);
		FUNC8(s);
	} else {
		FUNC4(s, FALSE, MSG_ERROR,
				  "Cannot send FST Ack Request");
	}

	return res;
}