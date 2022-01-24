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
struct hostapd_data {TYPE_2__* conf; scalar_t__ p2p_group; struct wpabuf* p2p_probe_resp_ie; struct wpabuf* p2p_beacon_ie; struct wpabuf* wps_probe_resp_ie; struct wpabuf* wps_beacon_ie; TYPE_1__* iface; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {int p2p; struct wpabuf* assocresp_elements; struct wpabuf* vendor_elements; scalar_t__ mbo_enabled; scalar_t__ wps_state; } ;
struct TYPE_3__ {struct wpabuf* fst_ies; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hostapd_data*) ; 
 scalar_t__ FUNC1 (struct hostapd_data*) ; 
 int P2P_MANAGE ; 
 int /*<<< orphan*/  P2P_SC_SUCCESS ; 
 scalar_t__ FUNC2 (struct wpabuf**,struct wpabuf*) ; 
 scalar_t__ FUNC3 (struct wpabuf**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (struct hostapd_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (struct hostapd_data*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC10 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (struct hostapd_data*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC12 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 struct wpabuf* FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC18 (struct wpabuf*,int) ; 
 scalar_t__ FUNC19 (struct wpabuf**,int) ; 
 struct wpabuf* FUNC20 () ; 

int FUNC21(struct hostapd_data *hapd,
			       struct wpabuf **beacon_ret,
			       struct wpabuf **proberesp_ret,
			       struct wpabuf **assocresp_ret)
{
	struct wpabuf *beacon = NULL, *proberesp = NULL, *assocresp = NULL;
	u8 buf[200], *pos;

	*beacon_ret = *proberesp_ret = *assocresp_ret = NULL;

	pos = buf;
	pos = FUNC14(hapd, pos);
	if (FUNC3(&beacon, buf, pos - buf) < 0)
		goto fail;
	pos = FUNC15(hapd, pos);
	if (FUNC3(&proberesp, buf, pos - buf) < 0)
		goto fail;

	pos = buf;
	pos = FUNC5(hapd, pos);
	if (FUNC3(&assocresp, buf, pos - buf) < 0)
		goto fail;
	pos = FUNC8(hapd, pos);
	pos = FUNC4(hapd, pos);
	pos = FUNC13(hapd, pos);
	if (FUNC3(&beacon, buf, pos - buf) < 0 ||
	    FUNC3(&proberesp, buf, pos - buf) < 0)
		goto fail;

#ifdef CONFIG_FST
	if (add_buf(&beacon, hapd->iface->fst_ies) < 0 ||
	    add_buf(&proberesp, hapd->iface->fst_ies) < 0 ||
	    add_buf(&assocresp, hapd->iface->fst_ies) < 0)
		goto fail;
#endif /* CONFIG_FST */

#ifdef CONFIG_FILS
	pos = hostapd_eid_fils_indic(hapd, buf, 0);
	if (add_buf_data(&beacon, buf, pos - buf) < 0 ||
	    add_buf_data(&proberesp, buf, pos - buf) < 0)
		goto fail;
#endif /* CONFIG_FILS */

	if (FUNC2(&beacon, hapd->wps_beacon_ie) < 0 ||
	    FUNC2(&proberesp, hapd->wps_probe_resp_ie) < 0)
		goto fail;

#ifdef CONFIG_P2P
	if (add_buf(&beacon, hapd->p2p_beacon_ie) < 0 ||
	    add_buf(&proberesp, hapd->p2p_probe_resp_ie) < 0)
		goto fail;
#endif /* CONFIG_P2P */

#ifdef CONFIG_P2P_MANAGER
	if (hapd->conf->p2p & P2P_MANAGE) {
		if (wpabuf_resize(&beacon, 100) == 0) {
			u8 *start, *p;
			start = wpabuf_put(beacon, 0);
			p = hostapd_eid_p2p_manage(hapd, start);
			wpabuf_put(beacon, p - start);
		}

		if (wpabuf_resize(&proberesp, 100) == 0) {
			u8 *start, *p;
			start = wpabuf_put(proberesp, 0);
			p = hostapd_eid_p2p_manage(hapd, start);
			wpabuf_put(proberesp, p - start);
		}
	}
#endif /* CONFIG_P2P_MANAGER */

#ifdef CONFIG_WPS
	if (hapd->conf->wps_state) {
		struct wpabuf *a = wps_build_assoc_resp_ie();
		add_buf(&assocresp, a);
		wpabuf_free(a);
	}
#endif /* CONFIG_WPS */

#ifdef CONFIG_P2P_MANAGER
	if (hapd->conf->p2p & P2P_MANAGE) {
		if (wpabuf_resize(&assocresp, 100) == 0) {
			u8 *start, *p;
			start = wpabuf_put(assocresp, 0);
			p = hostapd_eid_p2p_manage(hapd, start);
			wpabuf_put(assocresp, p - start);
		}
	}
#endif /* CONFIG_P2P_MANAGER */

#ifdef CONFIG_WIFI_DISPLAY
	if (hapd->p2p_group) {
		struct wpabuf *a;
		a = p2p_group_assoc_resp_ie(hapd->p2p_group, P2P_SC_SUCCESS);
		add_buf(&assocresp, a);
		wpabuf_free(a);
	}
#endif /* CONFIG_WIFI_DISPLAY */

#ifdef CONFIG_HS20
	pos = hostapd_eid_hs20_indication(hapd, buf);
	if (add_buf_data(&beacon, buf, pos - buf) < 0 ||
	    add_buf_data(&proberesp, buf, pos - buf) < 0)
		goto fail;

	pos = hostapd_eid_osen(hapd, buf);
	if (add_buf_data(&beacon, buf, pos - buf) < 0 ||
	    add_buf_data(&proberesp, buf, pos - buf) < 0)
		goto fail;
#endif /* CONFIG_HS20 */

#ifdef CONFIG_MBO
	if (hapd->conf->mbo_enabled ||
	    OCE_STA_CFON_ENABLED(hapd) || OCE_AP_ENABLED(hapd)) {
		pos = hostapd_eid_mbo(hapd, buf, sizeof(buf));
		if (add_buf_data(&beacon, buf, pos - buf) < 0 ||
		    add_buf_data(&proberesp, buf, pos - buf) < 0 ||
		    add_buf_data(&assocresp, buf, pos - buf) < 0)
			goto fail;
	}
#endif /* CONFIG_MBO */

#ifdef CONFIG_OWE
	pos = hostapd_eid_owe_trans(hapd, buf, sizeof(buf));
	if (add_buf_data(&beacon, buf, pos - buf) < 0 ||
	    add_buf_data(&proberesp, buf, pos - buf) < 0)
		goto fail;
#endif /* CONFIG_OWE */

	FUNC2(&beacon, hapd->conf->vendor_elements);
	FUNC2(&proberesp, hapd->conf->vendor_elements);
	FUNC2(&assocresp, hapd->conf->assocresp_elements);

	*beacon_ret = beacon;
	*proberesp_ret = proberesp;
	*assocresp_ret = assocresp;

	return 0;

fail:
	FUNC17(beacon);
	FUNC17(proberesp);
	FUNC17(assocresp);
	return -1;
}