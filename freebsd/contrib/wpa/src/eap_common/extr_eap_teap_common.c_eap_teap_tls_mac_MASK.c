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
typedef  int /*<<< orphan*/  u16 ;
typedef  int /*<<< orphan*/  tmp ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC0 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC9(u16 tls_cs, const u8 *cmk, size_t cmk_len,
			    const u8 *buffer, size_t buffer_len,
			    u8 *mac, size_t mac_len)
{
	int res;
	u8 tmp[48];

	FUNC4(tmp, 0, sizeof(tmp));
	FUNC4(mac, 0, mac_len);

	if (FUNC5(tls_cs)) {
		FUNC8(MSG_DEBUG, "EAP-TEAP: MAC algorithm: HMAC-SHA1");
		res = FUNC0(cmk, cmk_len, buffer, buffer_len, tmp);
	} else if (FUNC6(tls_cs)) {
		FUNC8(MSG_DEBUG, "EAP-TEAP: MAC algorithm: HMAC-SHA256");
		res = FUNC1(cmk, cmk_len, buffer, buffer_len, tmp);
	} else if (FUNC7(tls_cs)) {
		FUNC8(MSG_DEBUG, "EAP-TEAP: MAC algorithm: HMAC-SHA384");
		res = FUNC2(cmk, cmk_len, buffer, buffer_len, tmp);
	} else {
		FUNC8(MSG_INFO,
			   "EAP-TEAP: Unsupported TLS cipher suite 0x%04x",
			   tls_cs);
		res = -1;
	}
	if (res < 0)
		return res;

	/* FIX: RFC 7170 does not describe how to handle truncation of the
	 * Compound MAC or if the fields are supposed to be of variable length
	 * based on the negotiated TLS cipher suite (they are defined as having
	 * fixed size of 20 octets in the TLV description) */
	if (mac_len > sizeof(tmp))
		mac_len = sizeof(tmp);
	FUNC3(mac, tmp, mac_len);
	return 0;
}