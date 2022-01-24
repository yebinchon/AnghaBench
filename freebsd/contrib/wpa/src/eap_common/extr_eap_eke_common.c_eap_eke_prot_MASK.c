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
struct eap_eke_session {scalar_t__ encr; scalar_t__ mac; int /*<<< orphan*/  ki; int /*<<< orphan*/  ke; } ;

/* Variables and functions */
 size_t AES_BLOCK_SIZE ; 
 scalar_t__ EAP_EKE_ENCR_AES128_CBC ; 
 scalar_t__ EAP_EKE_PRF_HMAC_SHA1 ; 
 scalar_t__ EAP_EKE_PRF_HMAC_SHA2_256 ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 size_t SHA1_MAC_LEN ; 
 size_t SHA256_MAC_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

int FUNC6(struct eap_eke_session *sess,
		 const u8 *data, size_t data_len,
		 u8 *prot, size_t *prot_len)
{
	size_t block_size, icv_len, pad;
	u8 *pos, *iv, *e;

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

	pad = data_len % block_size;
	if (pad)
		pad = block_size - pad;

	if (*prot_len < block_size + data_len + pad + icv_len) {
		FUNC5(MSG_INFO, "EAP-EKE: Not enough room for Prot() data");
		return -1;
	}
	pos = prot;

	if (FUNC3(pos, block_size))
		return -1;
	iv = pos;
	FUNC4(MSG_DEBUG, "EAP-EKE: IV for Prot()", iv, block_size);
	pos += block_size;

	e = pos;
	FUNC2(pos, data, data_len);
	pos += data_len;
	if (pad) {
		if (FUNC3(pos, pad))
			return -1;
		pos += pad;
	}

	if (FUNC0(sess->ke, iv, e, data_len + pad) < 0 ||
	    FUNC1(sess->mac, sess->ki, e, data_len + pad, pos) < 0)
		return -1;
	pos += icv_len;

	*prot_len = pos - prot;
	return 0;
}