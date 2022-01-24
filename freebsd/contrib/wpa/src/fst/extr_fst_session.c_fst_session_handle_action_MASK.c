#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int action; } ;
struct TYPE_6__ {TYPE_1__ fst_action; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_3__ action; } ;
struct ieee80211_mgmt {TYPE_4__ u; } ;
struct fst_session {int dummy; } ;
struct fst_iface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
#define  FST_ACTION_ACK_REQUEST 133 
#define  FST_ACTION_ACK_RESPONSE 132 
#define  FST_ACTION_ON_CHANNEL_TUNNEL 131 
#define  FST_ACTION_SETUP_REQUEST 130 
#define  FST_ACTION_SETUP_RESPONSE 129 
#define  FST_ACTION_TEAR_DOWN 128 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fst_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct fst_session*,struct fst_iface*,struct ieee80211_mgmt const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct fst_session*,struct fst_iface*,struct ieee80211_mgmt const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct fst_session*,struct fst_iface*,struct ieee80211_mgmt const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct fst_session*,struct fst_iface*,struct ieee80211_mgmt const*,size_t) ; 

void FUNC6(struct fst_session *s,
			       struct fst_iface *iface,
			       const struct ieee80211_mgmt *mgmt,
			       size_t frame_len)
{
	switch (mgmt->u.action.u.fst_action.action) {
	case FST_ACTION_SETUP_REQUEST:
		FUNC0(0);
		break;
	case FST_ACTION_SETUP_RESPONSE:
		FUNC4(s, iface, mgmt, frame_len);
		break;
	case FST_ACTION_TEAR_DOWN:
		FUNC5(s, iface, mgmt, frame_len);
		break;
	case FST_ACTION_ACK_REQUEST:
		FUNC2(s, iface, mgmt, frame_len);
		break;
	case FST_ACTION_ACK_RESPONSE:
		FUNC3(s, iface, mgmt, frame_len);
		break;
	case FST_ACTION_ON_CHANNEL_TUNNEL:
	default:
		FUNC1(s, FALSE, MSG_ERROR,
				  "Unsupported FST Action frame");
		break;
	}
}