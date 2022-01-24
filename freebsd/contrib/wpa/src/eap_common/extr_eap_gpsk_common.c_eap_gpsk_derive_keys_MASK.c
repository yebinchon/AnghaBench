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

/* Variables and functions */
#define  EAP_GPSK_CIPHER_AES 129 
#define  EAP_GPSK_CIPHER_SHA256 128 
 int EAP_GPSK_RAND_LEN ; 
 int EAP_GPSK_VENDOR_IETF ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC1 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC8(const u8 *psk, size_t psk_len, int vendor,
			 int specifier,
			 const u8 *rand_peer, const u8 *rand_server,
			 const u8 *id_peer, size_t id_peer_len,
			 const u8 *id_server, size_t id_server_len,
			 u8 *msk, u8 *emsk, u8 *sk, size_t *sk_len,
			 u8 *pk, size_t *pk_len)
{
	u8 *seed, *pos;
	int ret;

	FUNC7(MSG_DEBUG, "EAP-GPSK: Deriving keys (%d:%d)",
		   vendor, specifier);

	if (vendor != EAP_GPSK_VENDOR_IETF)
		return -1;

	FUNC6(MSG_DEBUG, "EAP-GPSK: PSK", psk, psk_len);

	/* Seed = RAND_Peer || ID_Peer || RAND_Server || ID_Server */
	seed = FUNC3(2 * EAP_GPSK_RAND_LEN + id_server_len + id_peer_len);
	if (seed == NULL) {
		FUNC7(MSG_DEBUG, "EAP-GPSK: Failed to allocate memory "
			   "for key derivation");
		return -1;
	}

	pos = seed;
	FUNC4(pos, rand_peer, EAP_GPSK_RAND_LEN);
	pos += EAP_GPSK_RAND_LEN;
	FUNC4(pos, id_peer, id_peer_len);
	pos += id_peer_len;
	FUNC4(pos, rand_server, EAP_GPSK_RAND_LEN);
	pos += EAP_GPSK_RAND_LEN;
	FUNC4(pos, id_server, id_server_len);
	pos += id_server_len;
	FUNC5(MSG_DEBUG, "EAP-GPSK: Seed", seed, pos - seed);

	switch (specifier) {
	case EAP_GPSK_CIPHER_AES:
		ret = FUNC0(psk, psk_len, seed, pos - seed,
					       msk, emsk, sk, sk_len,
					       pk, pk_len);
		break;
#ifdef EAP_GPSK_SHA256
	case EAP_GPSK_CIPHER_SHA256:
		ret = eap_gpsk_derive_keys_sha256(psk, psk_len, seed,
						  pos - seed,
						  msk, emsk, sk, sk_len);
		break;
#endif /* EAP_GPSK_SHA256 */
	default:
		FUNC7(MSG_DEBUG, "EAP-GPSK: Unknown cipher %d:%d used in "
			   "key derivation", vendor, specifier);
		ret = -1;
		break;
	}

	FUNC2(seed);

	return ret;
}