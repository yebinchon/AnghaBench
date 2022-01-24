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
typedef  scalar_t__ u16 ;
struct wpabuf {int dummy; } ;
struct p2p_device {int flags; int tie_breaker; scalar_t__ oob_pw_id; int /*<<< orphan*/  wps_method; int /*<<< orphan*/  dialog_token; } ;
struct p2p_data {int dev_capab; int go_intent; scalar_t__* vendor_elem; scalar_t__ wfd_ie_go_neg; int /*<<< orphan*/  num_pref_freq; int /*<<< orphan*/  pref_freq_list; int /*<<< orphan*/  op_channel; int /*<<< orphan*/  op_reg_class; TYPE_1__* cfg; int /*<<< orphan*/  channels; int /*<<< orphan*/  intended_addr; int /*<<< orphan*/  ext_listen_interval; int /*<<< orphan*/  ext_listen_period; int /*<<< orphan*/  client_timeout; int /*<<< orphan*/  go_timeout; scalar_t__ cross_connect; } ;
struct TYPE_2__ {int /*<<< orphan*/  country; int /*<<< orphan*/  channel; int /*<<< orphan*/  reg_class; scalar_t__ p2p_intra_bss; } ;

/* Variables and functions */
 int P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY ; 
 int P2P_DEV_PREFER_PERSISTENT_GROUP ; 
 int P2P_DEV_PREFER_PERSISTENT_RECONN ; 
 int /*<<< orphan*/  P2P_GO_NEG_REQ ; 
 int /*<<< orphan*/  P2P_GROUP_CAPAB_CROSS_CONN ; 
 int /*<<< orphan*/  P2P_GROUP_CAPAB_INTRA_BSS_DIST ; 
 int /*<<< orphan*/  P2P_GROUP_CAPAB_PERSISTENT_GROUP ; 
 int /*<<< orphan*/  P2P_GROUP_CAPAB_PERSISTENT_RECONN ; 
 size_t VENDOR_ELEM_P2P_GO_NEG_REQ ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,struct p2p_data*,struct p2p_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int) ; 
 int /*<<< orphan*/ * FUNC6 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct p2p_data*,struct wpabuf*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct p2p_data*,char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (struct wpabuf*) ; 
 size_t FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct wpabuf*,scalar_t__) ; 

__attribute__((used)) static struct wpabuf * FUNC20(struct p2p_data *p2p,
					    struct p2p_device *peer)
{
	struct wpabuf *buf;
	u8 *len;
	u8 group_capab;
	size_t extra = 0;
	u16 pw_id;

#ifdef CONFIG_WIFI_DISPLAY
	if (p2p->wfd_ie_go_neg)
		extra = wpabuf_len(p2p->wfd_ie_go_neg);
#endif /* CONFIG_WIFI_DISPLAY */

	if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_P2P_GO_NEG_REQ])
		extra += FUNC18(p2p->vendor_elem[VENDOR_ELEM_P2P_GO_NEG_REQ]);

	buf = FUNC16(1000 + extra);
	if (buf == NULL)
		return NULL;

	FUNC11(buf, P2P_GO_NEG_REQ, peer->dialog_token);

	len = FUNC6(buf);
	group_capab = 0;
	if (peer->flags & P2P_DEV_PREFER_PERSISTENT_GROUP) {
		group_capab |= P2P_GROUP_CAPAB_PERSISTENT_GROUP;
		if (peer->flags & P2P_DEV_PREFER_PERSISTENT_RECONN)
			group_capab |= P2P_GROUP_CAPAB_PERSISTENT_RECONN;
	}
	if (p2p->cross_connect)
		group_capab |= P2P_GROUP_CAPAB_CROSS_CONN;
	if (p2p->cfg->p2p_intra_bss)
		group_capab |= P2P_GROUP_CAPAB_INTRA_BSS_DIST;
	FUNC0(buf, p2p->dev_capab &
			       ~P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY,
			       group_capab);
	FUNC5(buf, (p2p->go_intent << 1) | peer->tie_breaker);
	FUNC2(buf, p2p->go_timeout, p2p->client_timeout);
	FUNC8(buf, p2p->cfg->country, p2p->cfg->reg_class,
				   p2p->cfg->channel);
	if (p2p->ext_listen_interval)
		FUNC4(buf, p2p->ext_listen_period,
					      p2p->ext_listen_interval);
	FUNC7(buf, p2p->intended_addr);
	FUNC1(buf, p2p->cfg->country, &p2p->channels);
	FUNC3(buf, p2p, peer);
	FUNC9(buf, p2p->cfg->country,
				      p2p->op_reg_class, p2p->op_channel);
	FUNC12(buf, len);

	FUNC10(buf, p2p->pref_freq_list,
				      p2p->num_pref_freq);

	/* WPS IE with Device Password ID attribute */
	pw_id = FUNC15(peer->wps_method);
	if (peer->oob_pw_id)
		pw_id = peer->oob_pw_id;
	if (FUNC13(p2p, buf, pw_id, 0) < 0) {
		FUNC14(p2p, "Failed to build WPS IE for GO Negotiation Request");
		FUNC17(buf);
		return NULL;
	}

#ifdef CONFIG_WIFI_DISPLAY
	if (p2p->wfd_ie_go_neg)
		wpabuf_put_buf(buf, p2p->wfd_ie_go_neg);
#endif /* CONFIG_WIFI_DISPLAY */

	if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_P2P_GO_NEG_REQ])
		FUNC19(buf, p2p->vendor_elem[VENDOR_ELEM_P2P_GO_NEG_REQ]);

	return buf;
}