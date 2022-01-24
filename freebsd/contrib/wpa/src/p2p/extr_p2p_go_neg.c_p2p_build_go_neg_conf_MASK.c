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
struct wpabuf {int dummy; } ;
struct p2p_device {scalar_t__ go_state; int flags; int /*<<< orphan*/  channels; } ;
struct p2p_data {int dev_capab; scalar_t__* vendor_elem; scalar_t__ wfd_ie_go_neg; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; TYPE_1__* cfg; int /*<<< orphan*/  channels; int /*<<< orphan*/  const op_channel; int /*<<< orphan*/  const op_reg_class; scalar_t__ cross_connect; } ;
struct p2p_channels {int dummy; } ;
struct TYPE_2__ {char const* country; int /*<<< orphan*/  dev_addr; scalar_t__ p2p_intra_bss; } ;

/* Variables and functions */
 scalar_t__ LOCAL_GO ; 
 int P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY ; 
 int P2P_DEV_PREFER_PERSISTENT_GROUP ; 
 int P2P_DEV_PREFER_PERSISTENT_RECONN ; 
 int /*<<< orphan*/  P2P_GO_NEG_CONF ; 
 int /*<<< orphan*/  P2P_GROUP_CAPAB_CROSS_CONN ; 
 int /*<<< orphan*/  P2P_GROUP_CAPAB_INTRA_BSS_DIST ; 
 int /*<<< orphan*/  P2P_GROUP_CAPAB_PERSISTENT_GROUP ; 
 int /*<<< orphan*/  P2P_GROUP_CAPAB_PERSISTENT_RECONN ; 
 size_t VENDOR_ELEM_P2P_GO_NEG_CONF ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,char const*,struct p2p_channels*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,char const*,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct p2p_channels*) ; 
 int /*<<< orphan*/  FUNC9 (struct p2p_data*,char*) ; 
 struct wpabuf* FUNC10 (int) ; 
 size_t FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*,scalar_t__) ; 

__attribute__((used)) static struct wpabuf * FUNC13(struct p2p_data *p2p,
					     struct p2p_device *peer,
					     u8 dialog_token, u8 status,
					     const u8 *resp_chan, int go)
{
	struct wpabuf *buf;
	u8 *len;
	struct p2p_channels res;
	u8 group_capab;
	size_t extra = 0;

	FUNC9(p2p, "Building GO Negotiation Confirm");

#ifdef CONFIG_WIFI_DISPLAY
	if (p2p->wfd_ie_go_neg)
		extra = wpabuf_len(p2p->wfd_ie_go_neg);
#endif /* CONFIG_WIFI_DISPLAY */

	if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_P2P_GO_NEG_CONF])
		extra += FUNC11(p2p->vendor_elem[VENDOR_ELEM_P2P_GO_NEG_CONF]);

	buf = FUNC10(1000 + extra);
	if (buf == NULL)
		return NULL;

	FUNC5(buf, P2P_GO_NEG_CONF, dialog_token);

	len = FUNC3(buf);
	FUNC6(buf, status);
	group_capab = 0;
	if (peer->go_state == LOCAL_GO) {
		if (peer->flags & P2P_DEV_PREFER_PERSISTENT_GROUP) {
			group_capab |= P2P_GROUP_CAPAB_PERSISTENT_GROUP;
			if (peer->flags & P2P_DEV_PREFER_PERSISTENT_RECONN)
				group_capab |=
					P2P_GROUP_CAPAB_PERSISTENT_RECONN;
		}
		if (p2p->cross_connect)
			group_capab |= P2P_GROUP_CAPAB_CROSS_CONN;
		if (p2p->cfg->p2p_intra_bss)
			group_capab |= P2P_GROUP_CAPAB_INTRA_BSS_DIST;
	}
	FUNC0(buf, p2p->dev_capab &
			       ~P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY,
			       group_capab);
	if (go || resp_chan == NULL)
		FUNC4(buf, p2p->cfg->country,
					      p2p->op_reg_class,
					      p2p->op_channel);
	else
		FUNC4(buf, (const char *) resp_chan,
					      resp_chan[3], resp_chan[4]);
	FUNC8(&p2p->channels, &peer->channels, &res);
	FUNC1(buf, p2p->cfg->country, &res);
	if (go) {
		FUNC2(buf, p2p->cfg->dev_addr, p2p->ssid,
				     p2p->ssid_len);
	}
	FUNC7(buf, len);

#ifdef CONFIG_WIFI_DISPLAY
	if (p2p->wfd_ie_go_neg)
		wpabuf_put_buf(buf, p2p->wfd_ie_go_neg);
#endif /* CONFIG_WIFI_DISPLAY */

	if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_P2P_GO_NEG_CONF])
		FUNC12(buf, p2p->vendor_elem[VENDOR_ELEM_P2P_GO_NEG_CONF]);

	return buf;
}