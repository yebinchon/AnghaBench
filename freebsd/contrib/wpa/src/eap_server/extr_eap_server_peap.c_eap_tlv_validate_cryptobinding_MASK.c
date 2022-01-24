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
struct eap_sm {int dummy; } ;
struct eap_peap_data {int const peap_version; int /*<<< orphan*/  cmk; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EAP_TYPE_PEAP ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int SHA1_MAC_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int*,int,int*) ; 
 scalar_t__ FUNC1 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC7(struct eap_sm *sm,
					  struct eap_peap_data *data,
					  const u8 *crypto_tlv,
					  size_t crypto_tlv_len)
{
	u8 buf[61], mac[SHA1_MAC_LEN];
	const u8 *pos;

	if (crypto_tlv_len != 4 + 56) {
		FUNC6(MSG_DEBUG, "EAP-PEAP: Invalid cryptobinding TLV "
			   "length %d", (int) crypto_tlv_len);
		return -1;
	}

	pos = crypto_tlv;
	pos += 4; /* TLV header */
	if (pos[1] != data->peap_version) {
		FUNC6(MSG_DEBUG, "EAP-PEAP: Cryptobinding TLV Version "
			   "mismatch (was %d; expected %d)",
			   pos[1], data->peap_version);
		return -1;
	}

	if (pos[3] != 1) {
		FUNC6(MSG_DEBUG, "EAP-PEAP: Unexpected Cryptobinding TLV "
			   "SubType %d", pos[3]);
		return -1;
	}
	pos += 4;
	pos += 32; /* Nonce */

	/* Compound_MAC: HMAC-SHA1-160(cryptobinding TLV | EAP type) */
	FUNC2(buf, crypto_tlv, 60);
	FUNC3(buf + 4 + 4 + 32, 0, 20); /* Compound_MAC */
	buf[60] = EAP_TYPE_PEAP;
	FUNC0(data->cmk, 20, buf, sizeof(buf), mac);

	if (FUNC1(mac, pos, SHA1_MAC_LEN) != 0) {
		FUNC6(MSG_DEBUG, "EAP-PEAP: Invalid Compound_MAC in "
			   "cryptobinding TLV");
		FUNC5(MSG_DEBUG, "EAP-PEAP: CMK", data->cmk, 20);
		FUNC4(MSG_DEBUG, "EAP-PEAP: Cryptobinding seed data",
			    buf, 61);
		return -1;
	}

	FUNC6(MSG_DEBUG, "EAP-PEAP: Valid cryptobinding TLV received");

	return 0;
}