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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
#define  EAP_GPSK_CIPHER_AES 129 
#define  EAP_GPSK_CIPHER_SHA256 128 
 int /*<<< orphan*/  EAP_GPSK_VENDOR_IETF ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  const* SID_LABEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(u32 csuite_specifier,
				      u8 *kdf_out, size_t kdf_out_len,
				      const u8 *psk, const u8 *seed,
				      size_t seed_len, u8 method_type)
{
	u8 *pos, *data;
	size_t data_len;
	int (*gkdf)(const u8 *_psk, const u8 *_data, size_t _data_len,
		    u8 *buf, size_t len);

	gkdf = NULL;
	switch (csuite_specifier) {
	case EAP_GPSK_CIPHER_AES:
		gkdf = eap_gpsk_gkdf_cmac;
		break;
#ifdef EAP_GPSK_SHA256
	case EAP_GPSK_CIPHER_SHA256:
		gkdf = eap_gpsk_gkdf_sha256;
		break;
#endif /* EAP_GPSK_SHA256 */
	default:
		FUNC9(MSG_DEBUG, "EAP-GPSK: Unknown cipher %d used in "
			   "Session-Id derivation", csuite_specifier);
		return -1;
	}

#define SID_LABEL "Method ID"
	/* "Method ID" || EAP_Method_Type || CSuite_Sel || inputString */
	data_len = FUNC7(SID_LABEL) + 1 + 6 + seed_len;
	data = FUNC5(data_len);
	if (data == NULL)
		return -1;
	pos = data;
	FUNC6(pos, SID_LABEL, FUNC7(SID_LABEL));
	pos += FUNC7(SID_LABEL);
#undef SID_LABEL
	FUNC6(pos, &method_type, 1);
	pos += 1;
	FUNC1(pos, EAP_GPSK_VENDOR_IETF); /* CSuite/Vendor = IETF */
	pos += 4;
	FUNC0(pos, csuite_specifier); /* CSuite/Specifier */
	pos += 2;
	FUNC6(pos, seed, seed_len); /* inputString */
	FUNC8(MSG_DEBUG, "EAP-GPSK: Data to Method ID derivation",
		    data, data_len);

	if (gkdf(psk, data, data_len, kdf_out, kdf_out_len) < 0) {
		FUNC4(data);
		return -1;
	}
	FUNC4(data);
	FUNC8(MSG_DEBUG, "EAP-GPSK: Method ID", kdf_out, kdf_out_len);

	return 0;
}