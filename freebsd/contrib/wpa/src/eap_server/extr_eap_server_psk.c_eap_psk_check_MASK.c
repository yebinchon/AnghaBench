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
typedef  int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_psk_hdr_4 {int dummy; } ;
struct eap_psk_hdr_2 {int dummy; } ;
struct eap_psk_data {scalar_t__ state; } ;
typedef  int /*<<< orphan*/  Boolean ;

/* Variables and functions */
 int FUNC0 (int const) ; 
 int /*<<< orphan*/  EAP_TYPE_PSK ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ PSK_1 ; 
 scalar_t__ PSK_3 ; 
 int /*<<< orphan*/  TRUE ; 
 int* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static Boolean FUNC3(struct eap_sm *sm, void *priv,
			     struct wpabuf *respData)
{
	struct eap_psk_data *data = priv;
	size_t len;
	u8 t;
	const u8 *pos;

	pos = FUNC1(EAP_VENDOR_IETF, EAP_TYPE_PSK, respData, &len);
	if (pos == NULL || len < 1) {
		FUNC2(MSG_INFO, "EAP-PSK: Invalid frame");
		return TRUE;
	}
	t = FUNC0(*pos);

	FUNC2(MSG_DEBUG, "EAP-PSK: received frame: T=%d", t);

	if (data->state == PSK_1 && t != 1) {
		FUNC2(MSG_DEBUG, "EAP-PSK: Expected PSK-2 - "
			   "ignore T=%d", t);
		return TRUE;
	}

	if (data->state == PSK_3 && t != 3) {
		FUNC2(MSG_DEBUG, "EAP-PSK: Expected PSK-4 - "
			   "ignore T=%d", t);
		return TRUE;
	}

	if ((t == 1 && len < sizeof(struct eap_psk_hdr_2)) ||
	    (t == 3 && len < sizeof(struct eap_psk_hdr_4))) {
		FUNC2(MSG_DEBUG, "EAP-PSK: Too short frame");
		return TRUE;
	}

	return FALSE;
}