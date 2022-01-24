#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct p2p_device {int dummy; } ;
struct p2p_data {int /*<<< orphan*/  ext_listen_interval; int /*<<< orphan*/  ext_listen_period; int /*<<< orphan*/  dev_capab; struct wpabuf** vendor_elem; struct wpabuf* wfd_ie_assoc_req; } ;

/* Variables and functions */
 size_t VENDOR_ELEM_P2P_ASSOC_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int FUNC1 (struct p2p_data*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,size_t,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,struct p2p_data*,struct p2p_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,int /*<<< orphan*/ *) ; 
 struct p2p_device* FUNC7 (struct p2p_data*,int /*<<< orphan*/  const*) ; 
 struct wpabuf* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*) ; 
 size_t FUNC11 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*,struct wpabuf*) ; 

int FUNC13(struct p2p_data *p2p, const u8 *bssid, u8 *buf,
		     size_t len, int p2p_group, struct wpabuf *p2p_ie)
{
	struct wpabuf *tmp;
	u8 *lpos;
	struct p2p_device *peer;
	size_t tmplen;
	int res;
	size_t extra = 0;

	if (!p2p_group)
		return FUNC1(p2p, bssid, buf, len, p2p_ie);

#ifdef CONFIG_WIFI_DISPLAY
	if (p2p->wfd_ie_assoc_req)
		extra = wpabuf_len(p2p->wfd_ie_assoc_req);
#endif /* CONFIG_WIFI_DISPLAY */

	if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_P2P_ASSOC_REQ])
		extra += FUNC11(p2p->vendor_elem[VENDOR_ELEM_P2P_ASSOC_REQ]);

	/*
	 * (Re)Association Request - P2P IE
	 * P2P Capability attribute (shall be present)
	 * Extended Listen Timing (may be present)
	 * P2P Device Info attribute (shall be present)
	 */
	tmp = FUNC8(200 + extra);
	if (tmp == NULL)
		return -1;

#ifdef CONFIG_WIFI_DISPLAY
	if (p2p->wfd_ie_assoc_req)
		wpabuf_put_buf(tmp, p2p->wfd_ie_assoc_req);
#endif /* CONFIG_WIFI_DISPLAY */

	if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_P2P_ASSOC_REQ])
		FUNC12(tmp,
			       p2p->vendor_elem[VENDOR_ELEM_P2P_ASSOC_REQ]);

	peer = bssid ? FUNC7(p2p, bssid) : NULL;

	lpos = FUNC5(tmp);
	FUNC2(tmp, p2p->dev_capab, 0);
	if (p2p->ext_listen_interval)
		FUNC4(tmp, p2p->ext_listen_period,
					      p2p->ext_listen_interval);
	FUNC3(tmp, p2p, peer);
	FUNC6(tmp, lpos);

	tmplen = FUNC11(tmp);
	if (tmplen > len)
		res = -1;
	else {
		FUNC0(buf, FUNC10(tmp), tmplen);
		res = tmplen;
	}
	FUNC9(tmp);

	return res;
}