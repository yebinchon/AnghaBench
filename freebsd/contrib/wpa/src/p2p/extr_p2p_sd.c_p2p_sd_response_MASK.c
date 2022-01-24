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
typedef  struct wpabuf const wpabuf ;
struct p2p_data {TYPE_1__* cfg; int /*<<< orphan*/  pending_action_state; int /*<<< orphan*/  srv_update_indic; scalar_t__ sd_frag_id; scalar_t__ sd_resp_pos; int /*<<< orphan*/  sd_resp_dialog_token; int /*<<< orphan*/  sd_resp_addr; struct wpabuf const* sd_resp; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  P2P_NO_PENDING_ACTION ; 
 int /*<<< orphan*/  WLAN_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct wpabuf const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_data*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct p2p_data*,char*) ; 
 scalar_t__ FUNC4 (struct p2p_data*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,unsigned int) ; 
 struct wpabuf const* FUNC5 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf const*) ; 
 size_t FUNC8 (struct wpabuf const*) ; 

void FUNC9(struct p2p_data *p2p, int freq, const u8 *dst,
		     u8 dialog_token, const struct wpabuf *resp_tlvs)
{
	struct wpabuf *resp;
	size_t max_len;
	unsigned int wait_time = 200;

	/*
	 * In the 60 GHz, we have a smaller maximum frame length for management
	 * frames.
	 */
	max_len = (freq > 56160) ? 928 : 1400;

	/* TODO: fix the length limit to match with the maximum frame length */
	if (FUNC8(resp_tlvs) > max_len) {
		FUNC2(p2p, "SD response long enough to require fragmentation");
		if (p2p->sd_resp) {
			/*
			 * TODO: Could consider storing the fragmented response
			 * separately for each peer to avoid having to drop old
			 * one if there is more than one pending SD query.
			 * Though, that would eat more memory, so there are
			 * also benefits to just using a single buffer.
			 */
			FUNC2(p2p, "Drop previous SD response");
			FUNC6(p2p->sd_resp);
		}
		p2p->sd_resp = FUNC5(resp_tlvs);
		if (p2p->sd_resp == NULL) {
			FUNC3(p2p, "Failed to allocate SD response fragmentation area");
			return;
		}
		FUNC0(p2p->sd_resp_addr, dst, ETH_ALEN);
		p2p->sd_resp_dialog_token = dialog_token;
		p2p->sd_resp_pos = 0;
		p2p->sd_frag_id = 0;
		resp = FUNC1(dialog_token, WLAN_STATUS_SUCCESS,
					     1, p2p->srv_update_indic, NULL);
	} else {
		FUNC2(p2p, "SD response fits in initial response");
		wait_time = 0; /* no more SD frames in the sequence */
		resp = FUNC1(dialog_token,
					     WLAN_STATUS_SUCCESS, 0,
					     p2p->srv_update_indic, resp_tlvs);
	}
	if (resp == NULL)
		return;

	p2p->pending_action_state = P2P_NO_PENDING_ACTION;
	if (FUNC4(p2p, freq, dst, p2p->cfg->dev_addr,
			    p2p->cfg->dev_addr,
			    FUNC7(resp), FUNC8(resp), wait_time) < 0)
		FUNC2(p2p, "Failed to send Action frame");

	FUNC6(resp);
}