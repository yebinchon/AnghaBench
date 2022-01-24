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
struct wpa_supplicant {int /*<<< orphan*/  bssid; int /*<<< orphan*/  eapol; } ;
struct ieee802_1x_hdr {void* length; int /*<<< orphan*/  type; int /*<<< orphan*/  version; } ;
struct eap_hdr {int identifier; void* length; int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAPOL_VERSION ; 
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int /*<<< orphan*/  EAP_TYPE_IDENTITY ; 
 int /*<<< orphan*/  IEEE802_1X_TYPE_EAP_PACKET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void *eloop_ctx, void *timeout_ctx)
{
	struct wpa_supplicant *wpa_s = eloop_ctx;
	u8 buf[100], *pos;
	struct ieee802_1x_hdr *hdr;
	struct eap_hdr *eap;

	hdr = (struct ieee802_1x_hdr *) buf;
	hdr->version = EAPOL_VERSION;
	hdr->type = IEEE802_1X_TYPE_EAP_PACKET;
	hdr->length = FUNC1(5);

	eap = (struct eap_hdr *) (hdr + 1);
	eap->code = EAP_CODE_REQUEST;
	if (FUNC2((u8 *) &eap->identifier, sizeof(eap->identifier)) < 0)
		eap->identifier = FUNC3() & 0xff;
	eap->length = FUNC1(5);
	pos = (u8 *) (eap + 1);
	*pos = EAP_TYPE_IDENTITY;

	FUNC4("Sending fake EAP-Request-Identity\n");
	FUNC0(wpa_s->eapol, wpa_s->bssid, buf,
			  sizeof(*hdr) + 5);
}