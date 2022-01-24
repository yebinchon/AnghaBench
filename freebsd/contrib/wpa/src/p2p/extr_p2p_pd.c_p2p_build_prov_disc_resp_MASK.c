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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct wpabuf {int dummy; } ;
struct p2ps_provision {int conncap; int status; int /*<<< orphan*/  adv_mac; int /*<<< orphan*/  session_mac; int /*<<< orphan*/  session_id; int /*<<< orphan*/  adv_id; } ;
struct p2p_group {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  p2p_device_addr; } ;
struct p2p_device {TYPE_1__ info; } ;
struct p2p_data {size_t num_groups; int dev_capab; struct wpabuf** vendor_elem; struct p2ps_provision* p2ps_prov; int /*<<< orphan*/  client_timeout; int /*<<< orphan*/  go_timeout; int /*<<< orphan*/  channels; TYPE_2__* cfg; int /*<<< orphan*/  op_channel; int /*<<< orphan*/  op_reg_class; scalar_t__ cross_connect; struct p2p_group** groups; struct wpabuf* wfd_ie_prov_disc_resp; } ;
typedef  enum p2p_status_code { ____Placeholder_p2p_status_code } p2p_status_code ;
struct TYPE_4__ {int (* get_persistent_group ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*,size_t,int*,int*,size_t*,int*) ;int /*<<< orphan*/  country; int /*<<< orphan*/  op_channel; int /*<<< orphan*/  op_reg_class; int /*<<< orphan*/  cb_ctx; scalar_t__ p2p_intra_bss; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int P2PS_SETUP_CLIENT ; 
 int P2PS_SETUP_GROUP_OWNER ; 
 int P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY ; 
 int P2P_GROUP_CAPAB_CROSS_CONN ; 
 int P2P_GROUP_CAPAB_INTRA_BSS_DIST ; 
 int P2P_GROUP_CAPAB_PERSISTENT_GROUP ; 
 int P2P_GROUP_CAPAB_PERSISTENT_RECONN ; 
 int /*<<< orphan*/  P2P_PROV_DISC_RESP ; 
 int P2P_SC_SUCCESS ; 
 int P2P_SC_SUCCESS_DEFERRED ; 
 int SSID_MAX_LEN ; 
 size_t VENDOR_ELEM_P2P_PD_RESP ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,struct p2p_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,int /*<<< orphan*/ ,int const*) ; 
 int* FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*,int*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct wpabuf*,int*) ; 
 int /*<<< orphan*/  FUNC16 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC17 (struct p2p_group*) ; 
 int /*<<< orphan*/  FUNC18 (struct p2p_group*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC19 (struct p2p_data*,struct p2p_device*,struct wpabuf*) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*,size_t,int*,int*,size_t*,int*) ; 
 struct wpabuf* FUNC21 (int) ; 
 size_t FUNC22 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC23 (struct wpabuf*,struct wpabuf*) ; 

__attribute__((used)) static struct wpabuf * FUNC24(struct p2p_data *p2p,
						struct p2p_device *dev,
						u8 dialog_token,
						enum p2p_status_code status,
						u16 config_methods,
						u32 adv_id,
						const u8 *group_id,
						size_t group_id_len,
						const u8 *persist_ssid,
						size_t persist_ssid_len,
						const u8 *fcap,
						u16 fcap_len)
{
	struct wpabuf *buf;
	size_t extra = 0;
	int persist = 0;

#ifdef CONFIG_WIFI_DISPLAY
	struct wpabuf *wfd_ie = p2p->wfd_ie_prov_disc_resp;
	if (wfd_ie && group_id) {
		size_t i;
		for (i = 0; i < p2p->num_groups; i++) {
			struct p2p_group *g = p2p->groups[i];
			struct wpabuf *ie;
			if (!p2p_group_is_group_id_match(g, group_id,
							 group_id_len))
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

	if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_P2P_PD_RESP])
		extra += FUNC22(p2p->vendor_elem[VENDOR_ELEM_P2P_PD_RESP]);

	buf = FUNC21(1000 + extra);
	if (buf == NULL)
		return NULL;

	FUNC12(buf, P2P_PROV_DISC_RESP, dialog_token);

	/* Add P2P IE for P2PS */
	if (p2p->p2ps_prov && p2p->p2ps_prov->adv_id == adv_id) {
		u8 *len = FUNC8(buf);
		struct p2ps_provision *prov = p2p->p2ps_prov;
		u8 group_capab;
		u8 conncap = 0;

		if (status == P2P_SC_SUCCESS ||
		    status == P2P_SC_SUCCESS_DEFERRED)
			conncap = prov->conncap;

		if (!status && prov->status != -1)
			status = prov->status;

		FUNC14(buf, status);
		group_capab = P2P_GROUP_CAPAB_PERSISTENT_GROUP |
			P2P_GROUP_CAPAB_PERSISTENT_RECONN;
		if (p2p->cross_connect)
			group_capab |= P2P_GROUP_CAPAB_CROSS_CONN;
		if (p2p->cfg->p2p_intra_bss)
			group_capab |= P2P_GROUP_CAPAB_INTRA_BSS_DIST;
		FUNC2(buf, p2p->dev_capab &
				       ~P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY,
				       group_capab);
		FUNC6(buf, p2p, NULL);

		if (persist_ssid && p2p->cfg->get_persistent_group && dev &&
		    (status == P2P_SC_SUCCESS ||
		     status == P2P_SC_SUCCESS_DEFERRED)) {
			u8 ssid[SSID_MAX_LEN];
			size_t ssid_len;
			u8 go_dev_addr[ETH_ALEN];
			u8 intended_addr[ETH_ALEN];

			persist = p2p->cfg->get_persistent_group(
				p2p->cfg->cb_ctx,
				dev->info.p2p_device_addr,
				persist_ssid, persist_ssid_len, go_dev_addr,
				ssid, &ssid_len, intended_addr);
			if (persist) {
				FUNC11(
					buf, go_dev_addr, ssid, ssid_len);
				if (!FUNC0(intended_addr))
					FUNC9(
						buf, intended_addr);
			}
		}

		if (!persist && (conncap & P2PS_SETUP_GROUP_OWNER))
			FUNC19(p2p, dev, buf);

		/* Add Operating Channel if conncap indicates GO */
		if (persist || (conncap & P2PS_SETUP_GROUP_OWNER)) {
			if (p2p->op_reg_class && p2p->op_channel)
				FUNC10(
					buf, p2p->cfg->country,
					p2p->op_reg_class,
					p2p->op_channel);
			else
				FUNC10(
					buf, p2p->cfg->country,
					p2p->cfg->op_reg_class,
					p2p->cfg->op_channel);
		}

		if (persist ||
		    (conncap & (P2PS_SETUP_CLIENT | P2PS_SETUP_GROUP_OWNER)))
			FUNC3(buf, p2p->cfg->country,
						 &p2p->channels);

		if (!persist && conncap)
			FUNC5(buf, conncap);

		FUNC1(buf, adv_id, prov->adv_mac);

		if (persist ||
		    (conncap & (P2PS_SETUP_CLIENT | P2PS_SETUP_GROUP_OWNER)))
			FUNC4(buf, p2p->go_timeout,
						   p2p->client_timeout);

		FUNC13(buf, prov->session_id,
				       prov->session_mac);

		FUNC7(buf, fcap_len, fcap);
		FUNC15(buf, len);
	} else if (status != P2P_SC_SUCCESS || adv_id) {
		u8 *len = FUNC8(buf);

		FUNC14(buf, status);

		if (p2p->p2ps_prov)
			FUNC1(buf, adv_id,
						     p2p->p2ps_prov->adv_mac);

		FUNC15(buf, len);
	}

	/* WPS IE with Config Methods attribute */
	FUNC16(buf, config_methods);

#ifdef CONFIG_WIFI_DISPLAY
	if (wfd_ie)
		wpabuf_put_buf(buf, wfd_ie);
#endif /* CONFIG_WIFI_DISPLAY */

	if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_P2P_PD_RESP])
		FUNC23(buf, p2p->vendor_elem[VENDOR_ELEM_P2P_PD_RESP]);

	return buf;
}