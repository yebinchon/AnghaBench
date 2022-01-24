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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct p2p_group {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * p2p_device_addr; } ;
struct p2p_device {int dialog_token; int flags; TYPE_1__ info; } ;
struct p2p_data {scalar_t__ inv_role; size_t num_groups; struct wpabuf** vendor_elem; int /*<<< orphan*/  num_pref_freq; int /*<<< orphan*/  pref_freq_list; int /*<<< orphan*/  inv_ssid_len; int /*<<< orphan*/  inv_ssid; TYPE_2__* cfg; int /*<<< orphan*/  channels; int /*<<< orphan*/  inv_bssid; scalar_t__ inv_bssid_set; int /*<<< orphan*/  op_channel; int /*<<< orphan*/  op_reg_class; scalar_t__ inv_persistent; int /*<<< orphan*/  client_timeout; int /*<<< orphan*/  go_timeout; struct p2p_group** groups; struct wpabuf* wfd_ie_invitation; } ;
struct TYPE_4__ {int /*<<< orphan*/ * dev_addr; int /*<<< orphan*/  country; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int P2P_DEV_NO_PREF_CHAN ; 
 int /*<<< orphan*/  P2P_INVITATION_FLAGS_TYPE ; 
 int /*<<< orphan*/  P2P_INVITATION_REQ ; 
 scalar_t__ P2P_INVITE_ROLE_ACTIVE_GO ; 
 scalar_t__ P2P_INVITE_ROLE_CLIENT ; 
 size_t VENDOR_ELEM_P2P_INV_REQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,struct p2p_data*,struct p2p_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct p2p_data*,struct wpabuf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct p2p_group*) ; 
 struct wpabuf* FUNC14 (struct p2p_group*) ; 
 struct wpabuf* FUNC15 (int) ; 
 size_t FUNC16 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC17 (struct wpabuf*,struct wpabuf*) ; 

__attribute__((used)) static struct wpabuf * FUNC18(struct p2p_data *p2p,
						struct p2p_device *peer,
						const u8 *go_dev_addr,
						int dev_pw_id)
{
	struct wpabuf *buf;
	u8 *len;
	const u8 *dev_addr;
	size_t extra = 0;

#ifdef CONFIG_WIFI_DISPLAY
	struct wpabuf *wfd_ie = p2p->wfd_ie_invitation;
	if (wfd_ie && p2p->inv_role == P2P_INVITE_ROLE_ACTIVE_GO) {
		size_t i;
		for (i = 0; i < p2p->num_groups; i++) {
			struct p2p_group *g = p2p->groups[i];
			struct wpabuf *ie;
			if (os_memcmp(p2p_group_get_interface_addr(g),
				      p2p->inv_bssid, ETH_ALEN) != 0)
				continue;
			ie = p2p_group_get_wfd_ie(g);
			if (ie) {
				wfd_ie = ie;
				break;
			}
		}
	}
	if (wfd_ie)
		extra = wpabuf_len(wfd_ie);
#endif /* CONFIG_WIFI_DISPLAY */

	if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_P2P_INV_REQ])
		extra += FUNC16(p2p->vendor_elem[VENDOR_ELEM_P2P_INV_REQ]);

	buf = FUNC15(1000 + extra);
	if (buf == NULL)
		return NULL;

	peer->dialog_token++;
	if (peer->dialog_token == 0)
		peer->dialog_token = 1;
	FUNC10(buf, P2P_INVITATION_REQ,
				      peer->dialog_token);

	len = FUNC6(buf);
	if (p2p->inv_role == P2P_INVITE_ROLE_ACTIVE_GO || !p2p->inv_persistent)
		FUNC2(buf, 0, 0);
	else
		FUNC2(buf, p2p->go_timeout,
					   p2p->client_timeout);
	FUNC7(buf, p2p->inv_persistent ?
				     P2P_INVITATION_FLAGS_TYPE : 0);
	if (p2p->inv_role != P2P_INVITE_ROLE_CLIENT ||
	    !(peer->flags & P2P_DEV_NO_PREF_CHAN))
		FUNC8(buf, p2p->cfg->country,
					      p2p->op_reg_class,
					      p2p->op_channel);
	if (p2p->inv_bssid_set)
		FUNC4(buf, p2p->inv_bssid);
	FUNC1(buf, p2p->cfg->country, &p2p->channels);
	if (go_dev_addr)
		dev_addr = go_dev_addr;
	else if (p2p->inv_role == P2P_INVITE_ROLE_CLIENT)
		dev_addr = peer->info.p2p_device_addr;
	else
		dev_addr = p2p->cfg->dev_addr;
	FUNC5(buf, dev_addr, p2p->inv_ssid, p2p->inv_ssid_len);
	FUNC3(buf, p2p, peer);
	FUNC11(buf, len);

	FUNC9(buf, p2p->pref_freq_list,
				      p2p->num_pref_freq);

#ifdef CONFIG_WIFI_DISPLAY
	if (wfd_ie)
		wpabuf_put_buf(buf, wfd_ie);
#endif /* CONFIG_WIFI_DISPLAY */

	if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_P2P_INV_REQ])
		FUNC17(buf, p2p->vendor_elem[VENDOR_ELEM_P2P_INV_REQ]);

	if (dev_pw_id >= 0) {
		/* WSC IE in Invitation Request for NFC static handover */
		FUNC12(p2p, buf, dev_pw_id, 0);
	}

	return buf;
}