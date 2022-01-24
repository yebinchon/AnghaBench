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
struct p2p_group {int dummy; } ;
struct p2p_device {int dummy; } ;
struct p2p_data {size_t num_groups; struct wpabuf** vendor_elem; TYPE_1__* cfg; struct p2p_group** groups; struct wpabuf* wfd_ie_invitation; } ;
struct p2p_channels {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  country; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  P2P_INVITATION_RESP ; 
 size_t VENDOR_ELEM_P2P_INV_RESP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/ ,struct p2p_channels*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct p2p_group*) ; 
 struct wpabuf* FUNC10 (struct p2p_group*) ; 
 struct wpabuf* FUNC11 (int) ; 
 size_t FUNC12 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf*,struct wpabuf*) ; 

__attribute__((used)) static struct wpabuf * FUNC14(struct p2p_data *p2p,
						 struct p2p_device *peer,
						 u8 dialog_token, u8 status,
						 const u8 *group_bssid,
						 u8 reg_class, u8 channel,
						 struct p2p_channels *channels)
{
	struct wpabuf *buf;
	u8 *len;
	size_t extra = 0;

#ifdef CONFIG_WIFI_DISPLAY
	struct wpabuf *wfd_ie = p2p->wfd_ie_invitation;
	if (wfd_ie && group_bssid) {
		size_t i;
		for (i = 0; i < p2p->num_groups; i++) {
			struct p2p_group *g = p2p->groups[i];
			struct wpabuf *ie;
			if (os_memcmp(p2p_group_get_interface_addr(g),
				      group_bssid, ETH_ALEN) != 0)
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

	if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_P2P_INV_RESP])
		extra += FUNC12(p2p->vendor_elem[VENDOR_ELEM_P2P_INV_RESP]);

	buf = FUNC11(1000 + extra);
	if (buf == NULL)
		return NULL;

	FUNC6(buf, P2P_INVITATION_RESP,
				      dialog_token);

	len = FUNC4(buf);
	FUNC7(buf, status);
	FUNC2(buf, 0, 0); /* FIX */
	if (reg_class && channel)
		FUNC5(buf, p2p->cfg->country,
					      reg_class, channel);
	if (group_bssid)
		FUNC3(buf, group_bssid);
	if (channels)
		FUNC1(buf, p2p->cfg->country, channels);
	FUNC8(buf, len);

#ifdef CONFIG_WIFI_DISPLAY
	if (wfd_ie)
		wpabuf_put_buf(buf, wfd_ie);
#endif /* CONFIG_WIFI_DISPLAY */

	if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_P2P_INV_RESP])
		FUNC13(buf, p2p->vendor_elem[VENDOR_ELEM_P2P_INV_RESP]);

	return buf;
}