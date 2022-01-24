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
struct wpabuf {size_t used; } ;
struct wpa_global {int /*<<< orphan*/ * p2p; int /*<<< orphan*/ ** wfd_subelem; int /*<<< orphan*/  wifi_display; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 size_t WFD_SUBELEM_ASSOCIATED_BSSID ; 
 size_t WFD_SUBELEM_COUPLED_SINK ; 
 size_t WFD_SUBELEM_DEVICE_INFO ; 
 size_t WFD_SUBELEM_EXT_CAPAB ; 
 size_t WFD_SUBELEM_R2_DEVICE_INFO ; 
 size_t WFD_SUBELEM_SESSION_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct wpabuf* FUNC12 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC15 (size_t) ; 
 int /*<<< orphan*/  FUNC16 (struct wpabuf*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct wpabuf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct wpa_global *global)
{
	struct wpabuf *ie, *buf;
	size_t len, plen;

	if (global->p2p == NULL)
		return 0;

	FUNC14(MSG_DEBUG, "WFD: Update WFD IE");

	if (!global->wifi_display) {
		FUNC14(MSG_DEBUG, "WFD: Wi-Fi Display disabled - do not "
			   "include WFD IE");
		FUNC4(global->p2p, NULL);
		FUNC7(global->p2p, NULL);
		FUNC8(global->p2p, NULL);
		FUNC3(global->p2p, NULL);
		FUNC6(global->p2p, NULL);
		FUNC9(global->p2p, NULL);
		FUNC10(global->p2p, NULL);
		FUNC5(global->p2p, NULL);
		FUNC2(global->p2p, NULL);
		FUNC11(global->p2p, NULL);
		FUNC0(global->p2p, NULL);
		FUNC1(global->p2p, NULL);
		return 0;
	}

	FUNC2(global->p2p,
			     global->wfd_subelem[WFD_SUBELEM_DEVICE_INFO]);
	FUNC11(
		global->p2p, global->wfd_subelem[WFD_SUBELEM_R2_DEVICE_INFO]);
	FUNC0(
		global->p2p,
		global->wfd_subelem[WFD_SUBELEM_ASSOCIATED_BSSID]);
	FUNC1(
		global->p2p, global->wfd_subelem[WFD_SUBELEM_COUPLED_SINK]);

	/*
	 * WFD IE is included in number of management frames. Two different
	 * sets of subelements are included depending on the frame:
	 *
	 * Beacon, (Re)Association Request, GO Negotiation Req/Resp/Conf,
	 * Provision Discovery Req:
	 * WFD Device Info
	 * [Associated BSSID]
	 * [Coupled Sink Info]
	 *
	 * Probe Request:
	 * WFD Device Info
	 * [Associated BSSID]
	 * [Coupled Sink Info]
	 * [WFD Extended Capability]
	 *
	 * Probe Response:
	 * WFD Device Info
	 * [Associated BSSID]
	 * [Coupled Sink Info]
	 * [WFD Extended Capability]
	 * [WFD Session Info]
	 *
	 * (Re)Association Response, P2P Invitation Req/Resp,
	 * Provision Discovery Resp:
	 * WFD Device Info
	 * [Associated BSSID]
	 * [Coupled Sink Info]
	 * [WFD Session Info]
	 */
	len = 0;
	if (global->wfd_subelem[WFD_SUBELEM_DEVICE_INFO])
		len += FUNC17(global->wfd_subelem[
					  WFD_SUBELEM_DEVICE_INFO]);

	if (global->wfd_subelem[WFD_SUBELEM_R2_DEVICE_INFO])
		len += FUNC17(global->wfd_subelem[
					  WFD_SUBELEM_R2_DEVICE_INFO]);

	if (global->wfd_subelem[WFD_SUBELEM_ASSOCIATED_BSSID])
		len += FUNC17(global->wfd_subelem[
					  WFD_SUBELEM_ASSOCIATED_BSSID]);
	if (global->wfd_subelem[WFD_SUBELEM_COUPLED_SINK])
		len += FUNC17(global->wfd_subelem[
					  WFD_SUBELEM_COUPLED_SINK]);
	if (global->wfd_subelem[WFD_SUBELEM_SESSION_INFO])
		len += FUNC17(global->wfd_subelem[
					  WFD_SUBELEM_SESSION_INFO]);
	if (global->wfd_subelem[WFD_SUBELEM_EXT_CAPAB])
		len += FUNC17(global->wfd_subelem[WFD_SUBELEM_EXT_CAPAB]);
	buf = FUNC15(len);
	if (buf == NULL)
		return -1;

	if (global->wfd_subelem[WFD_SUBELEM_DEVICE_INFO])
		FUNC18(buf,
			       global->wfd_subelem[WFD_SUBELEM_DEVICE_INFO]);

	if (global->wfd_subelem[WFD_SUBELEM_R2_DEVICE_INFO])
		FUNC18(buf,
			       global->wfd_subelem[WFD_SUBELEM_R2_DEVICE_INFO]);

	if (global->wfd_subelem[WFD_SUBELEM_ASSOCIATED_BSSID])
		FUNC18(buf, global->wfd_subelem[
				       WFD_SUBELEM_ASSOCIATED_BSSID]);
	if (global->wfd_subelem[WFD_SUBELEM_COUPLED_SINK])
		FUNC18(buf,
			       global->wfd_subelem[WFD_SUBELEM_COUPLED_SINK]);

	ie = FUNC12(buf);
	FUNC13(MSG_DEBUG, "WFD: WFD IE for Beacon", ie);
	FUNC4(global->p2p, ie);

	ie = FUNC12(buf);
	FUNC13(MSG_DEBUG, "WFD: WFD IE for (Re)Association Request",
			ie);
	FUNC3(global->p2p, ie);

	ie = FUNC12(buf);
	FUNC13(MSG_DEBUG, "WFD: WFD IE for GO Negotiation", ie);
	FUNC5(global->p2p, ie);

	ie = FUNC12(buf);
	FUNC13(MSG_DEBUG, "WFD: WFD IE for Provision Discovery "
			"Request", ie);
	FUNC9(global->p2p, ie);

	plen = buf->used;
	if (global->wfd_subelem[WFD_SUBELEM_EXT_CAPAB])
		FUNC18(buf,
			       global->wfd_subelem[WFD_SUBELEM_EXT_CAPAB]);

	ie = FUNC12(buf);
	FUNC13(MSG_DEBUG, "WFD: WFD IE for Probe Request", ie);
	FUNC7(global->p2p, ie);

	if (global->wfd_subelem[WFD_SUBELEM_SESSION_INFO])
		FUNC18(buf,
			       global->wfd_subelem[WFD_SUBELEM_SESSION_INFO]);
	ie = FUNC12(buf);
	FUNC13(MSG_DEBUG, "WFD: WFD IE for Probe Response", ie);
	FUNC8(global->p2p, ie);

	/* Remove WFD Extended Capability from buffer */
	buf->used = plen;
	if (global->wfd_subelem[WFD_SUBELEM_SESSION_INFO])
		FUNC18(buf,
			       global->wfd_subelem[WFD_SUBELEM_SESSION_INFO]);

	ie = FUNC12(buf);
	FUNC13(MSG_DEBUG, "WFD: WFD IE for P2P Invitation", ie);
	FUNC6(global->p2p, ie);

	ie = FUNC12(buf);
	FUNC13(MSG_DEBUG, "WFD: WFD IE for Provision Discovery "
			"Response", ie);
	FUNC10(global->p2p, ie);

	FUNC16(buf);

	return 0;
}