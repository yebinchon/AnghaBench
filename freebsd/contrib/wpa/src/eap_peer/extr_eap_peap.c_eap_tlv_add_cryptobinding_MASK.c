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
typedef  int /*<<< orphan*/  const u8 ;
typedef  int u16 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_peap_data {int peap_version; int crypto_binding_used; int /*<<< orphan*/  const* cmk; int /*<<< orphan*/  binding_nonce; } ;

/* Variables and functions */
 int EAP_TLV_CRYPTO_BINDING_TLV ; 
 int /*<<< orphan*/  const EAP_TYPE_PEAP ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 size_t SHA1_MAC_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int,int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  const* FUNC2 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int) ; 

__attribute__((used)) static int FUNC6(struct eap_sm *sm,
				     struct eap_peap_data *data,
				     struct wpabuf *buf)
{
	u8 *mac;
	u8 eap_type = EAP_TYPE_PEAP;
	const u8 *addr[2];
	size_t len[2];
	u16 tlv_type;

	/* Compound_MAC: HMAC-SHA1-160(cryptobinding TLV | EAP type) */
	addr[0] = FUNC2(buf, 0);
	len[0] = 60;
	addr[1] = &eap_type;
	len[1] = 1;

	tlv_type = EAP_TLV_CRYPTO_BINDING_TLV;
	FUNC3(buf, tlv_type);
	FUNC3(buf, 56);

	FUNC5(buf, 0); /* Reserved */
	FUNC5(buf, data->peap_version); /* Version */
	FUNC5(buf, data->peap_version); /* RecvVersion */
	FUNC5(buf, 1); /* SubType: 0 = Request, 1 = Response */
	FUNC4(buf, data->binding_nonce, 32); /* Nonce */
	mac = FUNC2(buf, 20); /* Compound_MAC */
	FUNC1(MSG_MSGDUMP, "EAP-PEAP: Compound_MAC CMK", data->cmk, 20);
	FUNC1(MSG_MSGDUMP, "EAP-PEAP: Compound_MAC data 1",
		    addr[0], len[0]);
	FUNC1(MSG_MSGDUMP, "EAP-PEAP: Compound_MAC data 2",
		    addr[1], len[1]);
	if (FUNC0(data->cmk, 20, 2, addr, len, mac) < 0)
		return -1;
	FUNC1(MSG_MSGDUMP, "EAP-PEAP: Compound_MAC", mac, SHA1_MAC_LEN);
	data->crypto_binding_used = 1;

	return 0;
}