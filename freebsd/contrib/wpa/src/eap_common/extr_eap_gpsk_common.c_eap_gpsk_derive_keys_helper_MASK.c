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
typedef  size_t u32 ;

/* Variables and functions */
 size_t EAP_EMSK_LEN ; 
#define  EAP_GPSK_CIPHER_AES 129 
#define  EAP_GPSK_CIPHER_SHA256 128 
 int /*<<< orphan*/  EAP_GPSK_VENDOR_IETF ; 
 size_t EAP_MSK_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 size_t SHA256_MAC_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static int FUNC8(u32 csuite_specifier,
				       u8 *kdf_out, size_t kdf_out_len,
				       const u8 *psk, size_t psk_len,
				       const u8 *seed, size_t seed_len,
				       u8 *msk, u8 *emsk,
				       u8 *sk, size_t sk_len,
				       u8 *pk, size_t pk_len)
{
	u8 mk[32], *pos, *data;
	size_t data_len, mk_len;
	int (*gkdf)(const u8 *_psk, const u8 *_data, size_t _data_len,
		    u8 *buf, size_t len);

	gkdf = NULL;
	switch (csuite_specifier) {
	case EAP_GPSK_CIPHER_AES:
		gkdf = eap_gpsk_gkdf_cmac;
		mk_len = 16;
		break;
#ifdef EAP_GPSK_SHA256
	case EAP_GPSK_CIPHER_SHA256:
		gkdf = eap_gpsk_gkdf_sha256;
		mk_len = SHA256_MAC_LEN;
		break;
#endif /* EAP_GPSK_SHA256 */
	default:
		return -1;
	}

	if (psk_len < mk_len)
		return -1;

	data_len = 2 + psk_len + 6 + seed_len;
	data = FUNC5(data_len);
	if (data == NULL)
		return -1;
	pos = data;
	FUNC0(pos, psk_len);
	pos += 2;
	FUNC6(pos, psk, psk_len);
	pos += psk_len;
	FUNC1(pos, EAP_GPSK_VENDOR_IETF); /* CSuite/Vendor = IETF */
	pos += 4;
	FUNC0(pos, csuite_specifier); /* CSuite/Specifier */
	pos += 2;
	FUNC6(pos, seed, seed_len); /* inputString */
	FUNC7(MSG_DEBUG, "EAP-GPSK: Data to MK derivation",
			data, data_len);

	if (gkdf(psk, data, data_len, mk, mk_len) < 0) {
		FUNC4(data);
		return -1;
	}
	FUNC4(data);
	FUNC7(MSG_DEBUG, "EAP-GPSK: MK", mk, mk_len);

	if (gkdf(mk, seed, seed_len, kdf_out, kdf_out_len) < 0)
		return -1;

	pos = kdf_out;
	FUNC7(MSG_DEBUG, "EAP-GPSK: MSK", pos, EAP_MSK_LEN);
	FUNC6(msk, pos, EAP_MSK_LEN);
	pos += EAP_MSK_LEN;

	FUNC7(MSG_DEBUG, "EAP-GPSK: EMSK", pos, EAP_EMSK_LEN);
	FUNC6(emsk, pos, EAP_EMSK_LEN);
	pos += EAP_EMSK_LEN;

	FUNC7(MSG_DEBUG, "EAP-GPSK: SK", pos, sk_len);
	FUNC6(sk, pos, sk_len);
	pos += sk_len;

	if (pk) {
		FUNC7(MSG_DEBUG, "EAP-GPSK: PK", pos, pk_len);
		FUNC6(pk, pos, pk_len);
	}

	return 0;
}