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
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int length; int new_band_op; int old_band_op; scalar_t__ old_band_setup; void* old_band_id; scalar_t__ new_band_setup; void* new_band_id; int /*<<< orphan*/  session_control; void* fsts_id; int /*<<< orphan*/  element_id; } ;
struct fst_setup_req {TYPE_1__ stie; void* llt; void* dialog_token; int /*<<< orphan*/  action; } ;
struct TYPE_4__ {scalar_t__ old_iface; scalar_t__ new_iface; void* pending_setup_req_dlgt; int /*<<< orphan*/  fsts_id; int /*<<< orphan*/  llt_ms; int /*<<< orphan*/  new_peer_addr; int /*<<< orphan*/  old_peer_addr; } ;
struct fst_session {TYPE_2__ data; int /*<<< orphan*/  group; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FST_ACTION_SETUP_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FST_SESSION_STATE_SETUP_COMPLETION ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SESSION_TYPE_BSS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WLAN_EID_SESSION_TRANSITION ; 
 struct fst_session* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct fst_session*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct fst_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct fst_session*,scalar_t__,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct fst_session*) ; 
 int FUNC13 (struct fst_session*,int /*<<< orphan*/ ,struct fst_setup_req*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct fst_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct fst_session*) ; 
 void* FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct fst_setup_req*,int /*<<< orphan*/ ,int) ; 

int FUNC19(struct fst_session *s)
{
	struct fst_setup_req req;
	int res;
	u32 fsts_id;
	u8 dialog_token;
	struct fst_session *_s;

	if (FUNC12(s)) {
		FUNC9(s, MSG_ERROR, "Session in progress");
		return -EINVAL;
	}

	if (FUNC17(s->data.old_peer_addr)) {
		FUNC9(s, MSG_ERROR, "No old peer MAC address");
		return -EINVAL;
	}

	if (FUNC17(s->data.new_peer_addr)) {
		FUNC9(s, MSG_ERROR, "No new peer MAC address");
		return -EINVAL;
	}

	if (!s->data.old_iface) {
		FUNC9(s, MSG_ERROR, "No old interface defined");
		return -EINVAL;
	}

	if (!s->data.new_iface) {
		FUNC9(s, MSG_ERROR, "No new interface defined");
		return -EINVAL;
	}

	if (s->data.new_iface == s->data.old_iface) {
		FUNC9(s, MSG_ERROR,
				   "Same interface set as old and new");
		return -EINVAL;
	}

	if (!FUNC8(s->data.old_iface, s->data.old_peer_addr,
				    FALSE)) {
		FUNC9(s, MSG_ERROR,
				   "The preset old peer address is not connected");
		return -EINVAL;
	}

	if (!FUNC8(s->data.new_iface, s->data.new_peer_addr,
				    FALSE)) {
		FUNC9(s, MSG_ERROR,
				   "The preset new peer address is not connected");
		return -EINVAL;
	}

	_s = FUNC2(s->data.old_peer_addr, s->group);
	if (_s) {
		FUNC9(s, MSG_ERROR,
				   "There is another session in progress (old): %u",
				   _s->id);
		return -EINVAL;
	}

	_s = FUNC2(s->data.new_peer_addr, s->group);
	if (_s) {
		FUNC9(s, MSG_ERROR,
				   "There is another session in progress (new): %u",
				   _s->id);
		return -EINVAL;
	}

	dialog_token = FUNC3(s->group);
	fsts_id = FUNC4(s->group);

	FUNC18(&req, 0, sizeof(req));

	FUNC11(s, s->data.old_iface, MSG_INFO,
		"initiating FST setup for %s (llt=%u ms)",
		FUNC7(s->data.new_iface), s->data.llt_ms);

	req.action = FST_ACTION_SETUP_REQUEST;
	req.dialog_token = dialog_token;
	req.llt = FUNC16(FUNC0(s->data.llt_ms));
	/* 8.4.2.147 Session Transition element */
	req.stie.element_id = WLAN_EID_SESSION_TRANSITION;
	req.stie.length = sizeof(req.stie) - 2;
	req.stie.fsts_id = FUNC16(fsts_id);
	req.stie.session_control = FUNC1(SESSION_TYPE_BSS, 0);

	req.stie.new_band_id = FUNC5(s->data.new_iface);
	req.stie.new_band_op = 1;
	req.stie.new_band_setup = 0;

	req.stie.old_band_id = FUNC5(s->data.old_iface);
	req.stie.old_band_op = 1;
	req.stie.old_band_setup = 0;

	res = FUNC13(s, TRUE, &req, sizeof(req),
				      FUNC6(s->data.old_iface));
	if (!res) {
		s->data.fsts_id = fsts_id;
		s->data.pending_setup_req_dlgt = dialog_token;
		FUNC10(s, TRUE, MSG_INFO, "FST Setup Request sent");
		FUNC14(s, FST_SESSION_STATE_SETUP_COMPLETION,
				      NULL);

		FUNC15(s);
	}

	return res;
}