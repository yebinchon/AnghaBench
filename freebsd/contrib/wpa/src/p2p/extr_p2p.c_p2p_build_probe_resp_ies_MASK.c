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
struct p2p_data {int dev_capab; int /*<<< orphan*/  p2ps_adv_list; int /*<<< orphan*/  ext_listen_interval; int /*<<< orphan*/  ext_listen_period; scalar_t__* vendor_elem; scalar_t__ wfd_ie_probe_resp; TYPE_1__* go_neg_peer; } ;
struct TYPE_2__ {int /*<<< orphan*/  wps_method; } ;

/* Variables and functions */
 scalar_t__ MAX_SVC_ADV_IE_LEN ; 
 int P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY ; 
 size_t VENDOR_ELEM_PROBE_RESP_P2P ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,struct p2p_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,struct p2p_data*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct p2p_data*,struct wpabuf*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct p2p_data*,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*) ; 
 size_t FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*,scalar_t__) ; 

struct wpabuf * FUNC13(struct p2p_data *p2p,
					 const u8 *query_hash,
					 u8 query_count)
{
	struct wpabuf *buf;
	u8 *len;
	int pw_id = -1;
	size_t extra = 0;

#ifdef CONFIG_WIFI_DISPLAY
	if (p2p->wfd_ie_probe_resp)
		extra = wpabuf_len(p2p->wfd_ie_probe_resp);
#endif /* CONFIG_WIFI_DISPLAY */

	if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_PROBE_RESP_P2P])
		extra += FUNC11(p2p->vendor_elem[VENDOR_ELEM_PROBE_RESP_P2P]);

	if (query_count)
		extra += MAX_SVC_ADV_IE_LEN;

	buf = FUNC9(1000 + extra);
	if (buf == NULL)
		return NULL;

	if (p2p->go_neg_peer) {
		/* Advertise immediate availability of WPS credential */
		pw_id = FUNC8(p2p->go_neg_peer->wps_method);
	}

	if (FUNC6(p2p, buf, pw_id, 1) < 0) {
		FUNC7(p2p, "Failed to build WPS IE for Probe Response");
		FUNC10(buf);
		return NULL;
	}

#ifdef CONFIG_WIFI_DISPLAY
	if (p2p->wfd_ie_probe_resp)
		wpabuf_put_buf(buf, p2p->wfd_ie_probe_resp);
#endif /* CONFIG_WIFI_DISPLAY */

	if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_PROBE_RESP_P2P])
		FUNC12(buf,
			       p2p->vendor_elem[VENDOR_ELEM_PROBE_RESP_P2P]);

	/* P2P IE */
	len = FUNC3(buf);
	FUNC0(buf, p2p->dev_capab &
			       ~P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY, 0);
	if (p2p->ext_listen_interval)
		FUNC2(buf, p2p->ext_listen_period,
					      p2p->ext_listen_interval);
	FUNC1(buf, p2p, NULL);
	FUNC5(buf, len);

	if (query_count) {
		FUNC4(buf, p2p, query_count, query_hash,
					     p2p->p2ps_adv_list);
	}

	return buf;
}