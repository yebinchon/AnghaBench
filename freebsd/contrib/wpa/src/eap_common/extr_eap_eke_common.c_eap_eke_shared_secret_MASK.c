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
struct eap_eke_session {scalar_t__ encr; size_t auth_len; int /*<<< orphan*/ * shared_secret; int /*<<< orphan*/  prf; int /*<<< orphan*/  dhgroup; } ;
struct dh_group {size_t prime_len; int /*<<< orphan*/  prime; int /*<<< orphan*/ * generator; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 scalar_t__ EAP_EKE_ENCR_AES128_CBC ; 
 int EAP_EKE_MAX_DH_LEN ; 
 int EAP_EKE_MAX_HASH_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t*) ; 
 struct dh_group* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

int FUNC9(struct eap_eke_session *sess, const u8 *key,
			  const u8 *dhpriv, const u8 *peer_dhcomp)
{
	u8 zeros[EAP_EKE_MAX_HASH_LEN];
	u8 peer_pub[EAP_EKE_MAX_DH_LEN];
	u8 modexp[EAP_EKE_MAX_DH_LEN];
	size_t len;
	const struct dh_group *dh;

	dh = FUNC2(sess->dhgroup);
	if (sess->encr != EAP_EKE_ENCR_AES128_CBC || !dh)
		return -1;

	/* Decrypt peer DHComponent */
	FUNC4(peer_pub, peer_dhcomp + AES_BLOCK_SIZE, dh->prime_len);
	if (FUNC0(key, peer_dhcomp, peer_pub, dh->prime_len) < 0) {
		FUNC8(MSG_INFO, "EAP-EKE: Failed to decrypt DHComponent");
		return -1;
	}
	FUNC7(MSG_DEBUG, "EAP-EKE: Decrypted peer DH pubkey",
			peer_pub, dh->prime_len);

	/* SharedSecret = prf(0+, g ^ (x_s * x_p) (mod p)) */
	len = dh->prime_len;
	if (FUNC1(*dh->generator, dh->prime, dh->prime_len,
				    NULL, 0, dhpriv, dh->prime_len, peer_pub,
				    dh->prime_len, modexp, &len) < 0)
		return -1;
	if (len < dh->prime_len) {
		size_t pad = dh->prime_len - len;
		FUNC5(modexp + pad, modexp, len);
		FUNC6(modexp, 0, pad);
	}

	FUNC6(zeros, 0, sess->auth_len);
	if (FUNC3(sess->prf, zeros, sess->auth_len, modexp, dh->prime_len,
			NULL, 0, sess->shared_secret) < 0)
		return -1;
	FUNC7(MSG_DEBUG, "EAP-EKE: SharedSecret",
			sess->shared_secret, sess->auth_len);

	return 0;
}