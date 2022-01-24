#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sshkey {int type; int /*<<< orphan*/  xmss_sk; int /*<<< orphan*/  xmss_pk; int /*<<< orphan*/ * xmss_name; TYPE_1__* cert; int /*<<< orphan*/  ed25519_sk; int /*<<< orphan*/  ed25519_pk; int /*<<< orphan*/  ecdsa; int /*<<< orphan*/  ecdsa_nid; int /*<<< orphan*/  dsa; int /*<<< orphan*/  rsa; } ;
struct sshbuf {int dummy; } ;
typedef  enum sshkey_serialize_rep { ____Placeholder_sshkey_serialize_rep } sshkey_serialize_rep ;
struct TYPE_2__ {int /*<<< orphan*/  certblob; } ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ED25519_PK_SZ ; 
 int /*<<< orphan*/  ED25519_SK_SZ ; 
#define  KEY_DSA 137 
#define  KEY_DSA_CERT 136 
#define  KEY_ECDSA 135 
#define  KEY_ECDSA_CERT 134 
#define  KEY_ED25519 133 
#define  KEY_ED25519_CERT 132 
#define  KEY_RSA 131 
#define  KEY_RSA_CERT 130 
#define  KEY_XMSS 129 
#define  KEY_XMSS_CERT 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sshbuf*,int /*<<< orphan*/  const*) ; 
 int FUNC8 (struct sshbuf*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct sshbuf*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sshbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct sshbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (struct sshkey const*) ; 
 int /*<<< orphan*/  FUNC14 (struct sshkey const*) ; 
 int FUNC15 (struct sshkey const*,struct sshbuf*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sshkey const*) ; 

int
FUNC17(const struct sshkey *key, struct sshbuf *b,
    enum sshkey_serialize_rep opts)
{
	int r = SSH_ERR_INTERNAL_ERROR;
#ifdef WITH_OPENSSL
	const BIGNUM *rsa_n, *rsa_e, *rsa_d, *rsa_iqmp, *rsa_p, *rsa_q;
	const BIGNUM *dsa_p, *dsa_q, *dsa_g, *dsa_pub_key, *dsa_priv_key;
#endif /* WITH_OPENSSL */

	if ((r = FUNC8(b, FUNC13(key))) != 0)
		goto out;
	switch (key->type) {
#ifdef WITH_OPENSSL
	case KEY_RSA:
		RSA_get0_key(key->rsa, &rsa_n, &rsa_e, &rsa_d);
		RSA_get0_factors(key->rsa, &rsa_p, &rsa_q);
		RSA_get0_crt_params(key->rsa, NULL, NULL, &rsa_iqmp);
		if ((r = sshbuf_put_bignum2(b, rsa_n)) != 0 ||
		    (r = sshbuf_put_bignum2(b, rsa_e)) != 0 ||
		    (r = sshbuf_put_bignum2(b, rsa_d)) != 0 ||
		    (r = sshbuf_put_bignum2(b, rsa_iqmp)) != 0 ||
		    (r = sshbuf_put_bignum2(b, rsa_p)) != 0 ||
		    (r = sshbuf_put_bignum2(b, rsa_q)) != 0)
			goto out;
		break;
	case KEY_RSA_CERT:
		if (key->cert == NULL || sshbuf_len(key->cert->certblob) == 0) {
			r = SSH_ERR_INVALID_ARGUMENT;
			goto out;
		}
		RSA_get0_key(key->rsa, NULL, NULL, &rsa_d);
		RSA_get0_factors(key->rsa, &rsa_p, &rsa_q);
		RSA_get0_crt_params(key->rsa, NULL, NULL, &rsa_iqmp);
		if ((r = sshbuf_put_stringb(b, key->cert->certblob)) != 0 ||
		    (r = sshbuf_put_bignum2(b, rsa_d)) != 0 ||
		    (r = sshbuf_put_bignum2(b, rsa_iqmp)) != 0 ||
		    (r = sshbuf_put_bignum2(b, rsa_p)) != 0 ||
		    (r = sshbuf_put_bignum2(b, rsa_q)) != 0)
			goto out;
		break;
	case KEY_DSA:
		DSA_get0_pqg(key->dsa, &dsa_p, &dsa_q, &dsa_g);
		DSA_get0_key(key->dsa, &dsa_pub_key, &dsa_priv_key);
		if ((r = sshbuf_put_bignum2(b, dsa_p)) != 0 ||
		    (r = sshbuf_put_bignum2(b, dsa_q)) != 0 ||
		    (r = sshbuf_put_bignum2(b, dsa_g)) != 0 ||
		    (r = sshbuf_put_bignum2(b, dsa_pub_key)) != 0 ||
		    (r = sshbuf_put_bignum2(b, dsa_priv_key)) != 0)
			goto out;
		break;
	case KEY_DSA_CERT:
		if (key->cert == NULL || sshbuf_len(key->cert->certblob) == 0) {
			r = SSH_ERR_INVALID_ARGUMENT;
			goto out;
		}
		DSA_get0_key(key->dsa, NULL, &dsa_priv_key);
		if ((r = sshbuf_put_stringb(b, key->cert->certblob)) != 0 ||
		    (r = sshbuf_put_bignum2(b, dsa_priv_key)) != 0)
			goto out;
		break;
# ifdef OPENSSL_HAS_ECC
	case KEY_ECDSA:
		if ((r = sshbuf_put_cstring(b,
		    sshkey_curve_nid_to_name(key->ecdsa_nid))) != 0 ||
		    (r = sshbuf_put_eckey(b, key->ecdsa)) != 0 ||
		    (r = sshbuf_put_bignum2(b,
		    EC_KEY_get0_private_key(key->ecdsa))) != 0)
			goto out;
		break;
	case KEY_ECDSA_CERT:
		if (key->cert == NULL || sshbuf_len(key->cert->certblob) == 0) {
			r = SSH_ERR_INVALID_ARGUMENT;
			goto out;
		}
		if ((r = sshbuf_put_stringb(b, key->cert->certblob)) != 0 ||
		    (r = sshbuf_put_bignum2(b,
		    EC_KEY_get0_private_key(key->ecdsa))) != 0)
			goto out;
		break;
# endif /* OPENSSL_HAS_ECC */
#endif /* WITH_OPENSSL */
	case KEY_ED25519:
		if ((r = FUNC10(b, key->ed25519_pk,
		    ED25519_PK_SZ)) != 0 ||
		    (r = FUNC10(b, key->ed25519_sk,
		    ED25519_SK_SZ)) != 0)
			goto out;
		break;
	case KEY_ED25519_CERT:
		if (key->cert == NULL || FUNC6(key->cert->certblob) == 0) {
			r = SSH_ERR_INVALID_ARGUMENT;
			goto out;
		}
		if ((r = FUNC11(b, key->cert->certblob)) != 0 ||
		    (r = FUNC10(b, key->ed25519_pk,
		    ED25519_PK_SZ)) != 0 ||
		    (r = FUNC10(b, key->ed25519_sk,
		    ED25519_SK_SZ)) != 0)
			goto out;
		break;
#ifdef WITH_XMSS
	case KEY_XMSS:
		if (key->xmss_name == NULL) {
			r = SSH_ERR_INVALID_ARGUMENT;
			goto out;
		}
		if ((r = sshbuf_put_cstring(b, key->xmss_name)) != 0 ||
		    (r = sshbuf_put_string(b, key->xmss_pk,
		    sshkey_xmss_pklen(key))) != 0 ||
		    (r = sshbuf_put_string(b, key->xmss_sk,
		    sshkey_xmss_sklen(key))) != 0 ||
		    (r = sshkey_xmss_serialize_state_opt(key, b, opts)) != 0)
			goto out;
		break;
	case KEY_XMSS_CERT:
		if (key->cert == NULL || sshbuf_len(key->cert->certblob) == 0 ||
		    key->xmss_name == NULL) {
			r = SSH_ERR_INVALID_ARGUMENT;
			goto out;
		}
		if ((r = sshbuf_put_stringb(b, key->cert->certblob)) != 0 ||
		    (r = sshbuf_put_cstring(b, key->xmss_name)) != 0 ||
		    (r = sshbuf_put_string(b, key->xmss_pk,
		    sshkey_xmss_pklen(key))) != 0 ||
		    (r = sshbuf_put_string(b, key->xmss_sk,
		    sshkey_xmss_sklen(key))) != 0 ||
		    (r = sshkey_xmss_serialize_state_opt(key, b, opts)) != 0)
			goto out;
		break;
#endif /* WITH_XMSS */
	default:
		r = SSH_ERR_INVALID_ARGUMENT;
		goto out;
	}
	/* success */
	r = 0;
 out:
	return r;
}