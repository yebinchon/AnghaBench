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
struct ieee802_1x_kay {int /*<<< orphan*/  participant_list; } ;
struct ieee802_1x_hdr {scalar_t__ type; int /*<<< orphan*/  version; int /*<<< orphan*/  length; } ;
struct ieee8023_hdr {int /*<<< orphan*/  ethertype; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAPOL_VERSION ; 
 int ETH_P_PAE ; 
 scalar_t__ IEEE802_1X_TYPE_EAPOL_MKA ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee802_1x_kay*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC5(void *ctx, const u8 *src_addr, const u8 *buf,
			   size_t len)
{
	struct ieee802_1x_kay *kay = ctx;
	struct ieee8023_hdr *eth_hdr;
	struct ieee802_1x_hdr *eapol_hdr;
	size_t calc_len;

	/* IEEE Std 802.1X-2010, 11.4 (Validation of received EAPOL PDUs) */

	/* must contain at least ieee8023_hdr + ieee802_1x_hdr */
	if (len < sizeof(*eth_hdr) + sizeof(*eapol_hdr)) {
		FUNC4(MSG_MSGDUMP, "KaY: EAPOL frame too short (%lu)",
			   (unsigned long) len);
		return;
	}

	eth_hdr = (struct ieee8023_hdr *) buf;
	eapol_hdr = (struct ieee802_1x_hdr *) (eth_hdr + 1);
	calc_len = sizeof(*eth_hdr) + sizeof(*eapol_hdr) +
		FUNC0(eapol_hdr->length);
	if (len < calc_len) {
		FUNC4(MSG_MSGDUMP, "KaY: EAPOL MPDU is invalid: (received len %lu, calculated len %lu, EAPOL length %u)",
			   (unsigned long) len,
			   (unsigned long) calc_len,
			   FUNC0(eapol_hdr->length));
		return;
	}
	if (len > calc_len) {
		FUNC3(MSG_DEBUG,
			    "KaY: Ignore extra octets following the Packey Body field",
			    &buf[calc_len], len - calc_len);
		len = calc_len;
	}

	if (eapol_hdr->version < EAPOL_VERSION) {
		FUNC4(MSG_MSGDUMP, "KaY: version %d does not support MKA",
			   eapol_hdr->version);
		return;
	}
	if (FUNC0(eth_hdr->ethertype) != ETH_P_PAE ||
	    eapol_hdr->type != IEEE802_1X_TYPE_EAPOL_MKA)
		return; /* ignore other EAPOL types silently here */

	FUNC3(MSG_DEBUG, "KaY: RX EAPOL-MKA", buf, len);
	if (FUNC1(&kay->participant_list)) {
		FUNC4(MSG_ERROR,
			   "KaY: No MKA participant instance - ignore EAPOL-MKA");
		return;
	}

	FUNC2(kay, buf, len);
}