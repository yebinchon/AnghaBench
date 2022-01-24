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
struct eap_eke_session {scalar_t__ encr; scalar_t__ mac; int /*<<< orphan*/  ke; int /*<<< orphan*/  ki; } ;

/* Variables and functions */
 size_t AES_BLOCK_SIZE ; 
 scalar_t__ EAP_EKE_ENCR_AES128_CBC ; 
 int EAP_EKE_MAX_HASH_LEN ; 
 scalar_t__ EAP_EKE_PRF_HMAC_SHA1 ; 
 scalar_t__ EAP_EKE_PRF_HMAC_SHA2_256 ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 size_t SHA1_MAC_LEN ; 
 size_t SHA256_MAC_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

int FUNC6(struct eap_eke_session *sess,
			 const u8 *prot, size_t prot_len,
			 u8 *data, size_t *data_len)
{
	size_t block_size, icv_len;
	u8 icv[EAP_EKE_MAX_HASH_LEN];

	if (sess->encr == EAP_EKE_ENCR_AES128_CBC)
		block_size = AES_BLOCK_SIZE;
	else
		return -1;

	if (sess->mac == EAP_EKE_PRF_HMAC_SHA1)
		icv_len = SHA1_MAC_LEN;
	else if (sess->mac == EAP_EKE_PRF_HMAC_SHA2_256)
		icv_len = SHA256_MAC_LEN;
	else
		return -1;

	if (prot_len < 2 * block_size + icv_len ||
	    (prot_len - icv_len) % block_size)
		return -1;

	if (FUNC1(sess->mac, sess->ki, prot + block_size,
			prot_len - block_size - icv_len, icv) < 0)
		return -1;
	if (FUNC2(icv, prot + prot_len - icv_len, icv_len) != 0) {
		FUNC5(MSG_INFO, "EAP-EKE: ICV mismatch in Prot() data");
		return -1;
	}

	if (*data_len < prot_len - block_size - icv_len) {
		FUNC5(MSG_INFO, "EAP-EKE: Not enough room for decrypted Prot() data");
		return -1;
	}

	*data_len = prot_len - block_size - icv_len;
	FUNC3(data, prot + block_size, *data_len);
	if (FUNC0(sess->ke, prot, data, *data_len) < 0) {
		FUNC5(MSG_INFO, "EAP-EKE: Failed to decrypt Prot() data");
		return -1;
	}
	FUNC4(MSG_DEBUG, "EAP-EKE: Decrypted Prot() data",
			data, *data_len);

	return 0;
}