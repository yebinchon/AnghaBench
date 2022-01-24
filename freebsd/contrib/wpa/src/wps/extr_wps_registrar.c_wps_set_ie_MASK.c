#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct wps_registrar {scalar_t__ static_wep_only; TYPE_1__* wps; scalar_t__ dualband; int /*<<< orphan*/ * set_ie_cb; } ;
struct wpabuf {int dummy; } ;
typedef  int /*<<< orphan*/  ms_wps ;
struct TYPE_9__ {scalar_t__* vendor_ext; } ;
struct TYPE_8__ {TYPE_2__ dev; int /*<<< orphan*/  uuid; scalar_t__ ap; } ;

/* Variables and functions */
 int MAX_WPS_VENDOR_EXTENSIONS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WLAN_EID_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  WPS_RESP_AP ; 
 int /*<<< orphan*/  WPS_RESP_REGISTRAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int const*,int) ; 
 int* FUNC5 (struct wps_registrar*,size_t*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,struct wpabuf*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,struct wpabuf*) ; 
 scalar_t__ FUNC8 (TYPE_2__*,struct wpabuf*) ; 
 scalar_t__ FUNC9 (TYPE_2__*,struct wpabuf*) ; 
 scalar_t__ FUNC10 (struct wps_registrar*,struct wpabuf*) ; 
 scalar_t__ FUNC11 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_2__*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct wps_registrar*,struct wpabuf*) ; 
 scalar_t__ FUNC14 (struct wps_registrar*,struct wpabuf*) ; 
 scalar_t__ FUNC15 (struct wps_registrar*,struct wpabuf*) ; 
 scalar_t__ FUNC16 (struct wps_registrar*,struct wpabuf*) ; 
 scalar_t__ FUNC17 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (TYPE_2__*,struct wpabuf*) ; 
 scalar_t__ FUNC19 (struct wpabuf*) ; 
 scalar_t__ FUNC20 (struct wpabuf*,int /*<<< orphan*/ ,int const*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (TYPE_1__*,struct wpabuf*) ; 
 int FUNC22 (struct wps_registrar*,struct wpabuf*,struct wpabuf*) ; 
 struct wpabuf* FUNC23 (struct wpabuf*) ; 

__attribute__((used)) static int FUNC24(struct wps_registrar *reg)
{
	struct wpabuf *beacon;
	struct wpabuf *probe;
	const u8 *auth_macs;
	size_t count;
	size_t vendor_len = 0;
	int i;

	if (reg->set_ie_cb == NULL)
		return 0;

	for (i = 0; i < MAX_WPS_VENDOR_EXTENSIONS; i++) {
		if (reg->wps->dev.vendor_ext[i]) {
			vendor_len += 2 + 2;
			vendor_len += FUNC3(reg->wps->dev.vendor_ext[i]);
		}
	}

	beacon = FUNC1(400 + vendor_len);
	if (beacon == NULL)
		return -1;
	probe = FUNC1(500 + vendor_len);
	if (probe == NULL) {
		FUNC2(beacon);
		return -1;
	}

	auth_macs = FUNC5(reg, &count);

	FUNC0(MSG_DEBUG, "WPS: Build Beacon IEs");

	if (FUNC19(beacon) ||
	    FUNC21(reg->wps, beacon) ||
	    FUNC6(reg->wps, beacon) ||
	    FUNC16(reg, beacon) ||
	    FUNC15(reg, beacon) ||
	    FUNC14(reg, beacon) ||
	    FUNC13(reg, beacon) ||
	    (reg->dualband && FUNC12(&reg->wps->dev, beacon, 0)) ||
	    FUNC20(beacon, 0, auth_macs, count, 0) ||
	    FUNC18(&reg->wps->dev, beacon)) {
		FUNC2(beacon);
		FUNC2(probe);
		return -1;
	}

#ifdef CONFIG_P2P
	if (wps_build_dev_name(&reg->wps->dev, beacon) ||
	    wps_build_primary_dev_type(&reg->wps->dev, beacon)) {
		wpabuf_free(beacon);
		wpabuf_free(probe);
		return -1;
	}
#endif /* CONFIG_P2P */

	FUNC0(MSG_DEBUG, "WPS: Build Probe Response IEs");

	if (FUNC19(probe) ||
	    FUNC21(reg->wps, probe) ||
	    FUNC6(reg->wps, probe) ||
	    FUNC16(reg, probe) ||
	    FUNC15(reg, probe) ||
	    FUNC14(reg, probe) ||
	    FUNC11(probe, reg->wps->ap ? WPS_RESP_AP :
				WPS_RESP_REGISTRAR) ||
	    FUNC17(probe, reg->wps->uuid) ||
	    FUNC8(&reg->wps->dev, probe) ||
	    FUNC10(reg, probe) ||
	    (reg->dualband && FUNC12(&reg->wps->dev, probe, 0)) ||
	    FUNC20(probe, 0, auth_macs, count, 0) ||
	    FUNC18(&reg->wps->dev, probe)) {
		FUNC2(beacon);
		FUNC2(probe);
		return -1;
	}

	beacon = FUNC23(beacon);
	probe = FUNC23(probe);

	if (!beacon || !probe) {
		FUNC2(beacon);
		FUNC2(probe);
		return -1;
	}

	if (reg->static_wep_only) {
		/*
		 * Windows XP and Vista clients can get confused about
		 * EAP-Identity/Request when they probe the network with
		 * EAPOL-Start. In such a case, they may assume the network is
		 * using IEEE 802.1X and prompt user for a certificate while
		 * the correct (non-WPS) behavior would be to ask for the
		 * static WEP key. As a workaround, use Microsoft Provisioning
		 * IE to advertise that legacy 802.1X is not supported.
		 */
		const u8 ms_wps[7] = {
			WLAN_EID_VENDOR_SPECIFIC, 5,
			/* Microsoft Provisioning IE (00:50:f2:5) */
			0x00, 0x50, 0xf2, 5,
			0x00 /* no legacy 802.1X or MS WPS */
		};
		FUNC0(MSG_DEBUG, "WPS: Add Microsoft Provisioning IE "
			   "into Beacon/Probe Response frames");
		FUNC4(beacon, ms_wps, sizeof(ms_wps));
		FUNC4(probe, ms_wps, sizeof(ms_wps));
	}

	return FUNC22(reg, beacon, probe);
}