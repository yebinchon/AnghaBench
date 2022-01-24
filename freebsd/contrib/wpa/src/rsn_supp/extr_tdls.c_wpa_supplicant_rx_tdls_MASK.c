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
struct wpa_tdls_frame {int payloadtype; scalar_t__ category; int action; } ;
struct wpa_sm {int /*<<< orphan*/  own_addr; int /*<<< orphan*/  tdls_supported; scalar_t__ tdls_disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ WLAN_ACTION_TDLS ; 
#define  WLAN_TDLS_DISCOVERY_REQUEST 132 
#define  WLAN_TDLS_SETUP_CONFIRM 131 
#define  WLAN_TDLS_SETUP_REQUEST 130 
#define  WLAN_TDLS_SETUP_RESPONSE 129 
#define  WLAN_TDLS_TEARDOWN 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_sm*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_sm*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_sm*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_sm*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_sm*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static void FUNC8(void *ctx, const u8 *src_addr,
				   const u8 *buf, size_t len)
{
	struct wpa_sm *sm = ctx;
	struct wpa_tdls_frame *tf;

	FUNC1(MSG_DEBUG, "TDLS: Received Data frame encapsulation",
		    buf, len);

	if (sm->tdls_disabled || !sm->tdls_supported) {
		FUNC2(MSG_DEBUG, "TDLS: Discard message - TDLS disabled "
			   "or unsupported by driver");
		return;
	}

	if (FUNC0(src_addr, sm->own_addr, ETH_ALEN) == 0) {
		FUNC2(MSG_DEBUG, "TDLS: Discard copy of own message");
		return;
	}

	if (len < sizeof(*tf)) {
		FUNC2(MSG_INFO, "TDLS: Drop too short frame");
		return;
	}

	/* Check to make sure its a valid encapsulated TDLS frame */
	tf = (struct wpa_tdls_frame *) buf;
	if (tf->payloadtype != 2 /* TDLS_RFTYPE */ ||
	    tf->category != WLAN_ACTION_TDLS) {
		FUNC2(MSG_INFO, "TDLS: Invalid frame - payloadtype=%u "
			   "category=%u action=%u",
			   tf->payloadtype, tf->category, tf->action);
		return;
	}

	switch (tf->action) {
	case WLAN_TDLS_SETUP_REQUEST:
		FUNC4(sm, src_addr, buf, len);
		break;
	case WLAN_TDLS_SETUP_RESPONSE:
		FUNC5(sm, src_addr, buf, len);
		break;
	case WLAN_TDLS_SETUP_CONFIRM:
		FUNC6(sm, src_addr, buf, len);
		break;
	case WLAN_TDLS_TEARDOWN:
		FUNC7(sm, src_addr, buf, len);
		break;
	case WLAN_TDLS_DISCOVERY_REQUEST:
		FUNC3(sm, src_addr, buf, len);
		break;
	default:
		/* Kernel code will process remaining frames */
		FUNC2(MSG_DEBUG, "TDLS: Ignore TDLS frame action code %u",
			   tf->action);
		break;
	}
}