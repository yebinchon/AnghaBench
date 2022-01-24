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
typedef  int /*<<< orphan*/  u_char ;
struct sshkey {int ecdsa_nid; int type; int /*<<< orphan*/  rsa; int /*<<< orphan*/ * xmss_sk; int /*<<< orphan*/ * xmss_pk; int /*<<< orphan*/  xmss_name; int /*<<< orphan*/ * ed25519_sk; int /*<<< orphan*/ * ed25519_pk; int /*<<< orphan*/ * ecdsa; int /*<<< orphan*/  dsa; } ;
struct sshbuf {int dummy; } ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t ED25519_PK_SZ ; 
 size_t ED25519_SK_SZ ; 
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
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_EC_CURVE_MISMATCH ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int SSH_ERR_INVALID_FORMAT ; 
 int SSH_ERR_KEY_TYPE_UNKNOWN ; 
 int SSH_ERR_LIBCRYPTO_ERROR ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC14 (struct sshkey*,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct sshbuf*,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct sshbuf*,char**,int /*<<< orphan*/ *) ; 
 int FUNC17 (struct sshbuf*,int /*<<< orphan*/ *) ; 
 int FUNC18 (struct sshbuf*,int /*<<< orphan*/ **,size_t*) ; 
 int FUNC19 (char*) ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (struct sshkey*) ; 
 int FUNC24 (struct sshbuf*,struct sshkey**) ; 
 struct sshkey* FUNC25 (int) ; 
 int FUNC26 (char*) ; 
 int FUNC27 (struct sshkey*,struct sshbuf*) ; 
 int FUNC28 (struct sshkey*,char*) ; 
 size_t FUNC29 (struct sshkey*) ; 
 size_t FUNC30 (struct sshkey*) ; 
 int /*<<< orphan*/  FUNC31 (char*,int /*<<< orphan*/ ) ; 

int
FUNC32(struct sshbuf *buf, struct sshkey **kp)
{
	char *tname = NULL, *curve = NULL, *xmss_name = NULL;
	struct sshkey *k = NULL;
	size_t pklen = 0, sklen = 0;
	int type, r = SSH_ERR_INTERNAL_ERROR;
	u_char *ed25519_pk = NULL, *ed25519_sk = NULL;
	u_char *xmss_pk = NULL, *xmss_sk = NULL;
#ifdef WITH_OPENSSL
	BIGNUM *exponent = NULL;
	BIGNUM *rsa_n = NULL, *rsa_e = NULL, *rsa_d = NULL;
	BIGNUM *rsa_iqmp = NULL, *rsa_p = NULL, *rsa_q = NULL;
	BIGNUM *dsa_p = NULL, *dsa_q = NULL, *dsa_g = NULL;
	BIGNUM *dsa_pub_key = NULL, *dsa_priv_key = NULL;
#endif /* WITH_OPENSSL */

	if (kp != NULL)
		*kp = NULL;
	if ((r = FUNC16(buf, &tname, NULL)) != 0)
		goto out;
	type = FUNC26(tname);
	switch (type) {
#ifdef WITH_OPENSSL
	case KEY_DSA:
		if ((k = sshkey_new_private(type)) == NULL) {
			r = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		if ((dsa_p = BN_new()) == NULL ||
		    (dsa_q = BN_new()) == NULL ||
		    (dsa_g = BN_new()) == NULL ||
		    (dsa_pub_key = BN_new()) == NULL ||
		    (dsa_priv_key = BN_new()) == NULL) {
			r = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		if ((r = sshbuf_get_bignum2(buf, dsa_p)) != 0 ||
		    (r = sshbuf_get_bignum2(buf, dsa_q)) != 0 ||
		    (r = sshbuf_get_bignum2(buf, dsa_g)) != 0 ||
		    (r = sshbuf_get_bignum2(buf, dsa_pub_key)) != 0 ||
		    (r = sshbuf_get_bignum2(buf, dsa_priv_key)) != 0)
			goto out;
		if (!DSA_set0_pqg(k->dsa, dsa_p, dsa_q, dsa_g)) {
			r = SSH_ERR_LIBCRYPTO_ERROR;
			goto out;
		}
		dsa_p = dsa_q = dsa_g = NULL; /* transferred */
		if (!DSA_set0_key(k->dsa, dsa_pub_key, dsa_priv_key)) {
			r = SSH_ERR_LIBCRYPTO_ERROR;
			goto out;
		}
		dsa_pub_key = dsa_priv_key = NULL; /* transferred */
		break;
	case KEY_DSA_CERT:
		if ((dsa_priv_key = BN_new()) == NULL) {
			r = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		if ((r = sshkey_froms(buf, &k)) != 0 ||
		    (r = sshbuf_get_bignum2(buf, dsa_priv_key)) != 0)
			goto out;
		if (!DSA_set0_key(k->dsa, NULL, dsa_priv_key)) {
			r = SSH_ERR_LIBCRYPTO_ERROR;
			goto out;
		}
		dsa_priv_key = NULL; /* transferred */
		break;
# ifdef OPENSSL_HAS_ECC
	case KEY_ECDSA:
		if ((k = sshkey_new_private(type)) == NULL) {
			r = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		if ((k->ecdsa_nid = sshkey_ecdsa_nid_from_name(tname)) == -1) {
			r = SSH_ERR_INVALID_ARGUMENT;
			goto out;
		}
		if ((r = sshbuf_get_cstring(buf, &curve, NULL)) != 0)
			goto out;
		if (k->ecdsa_nid != sshkey_curve_name_to_nid(curve)) {
			r = SSH_ERR_EC_CURVE_MISMATCH;
			goto out;
		}
		k->ecdsa = EC_KEY_new_by_curve_name(k->ecdsa_nid);
		if (k->ecdsa  == NULL || (exponent = BN_new()) == NULL) {
			r = SSH_ERR_LIBCRYPTO_ERROR;
			goto out;
		}
		if ((r = sshbuf_get_eckey(buf, k->ecdsa)) != 0 ||
		    (r = sshbuf_get_bignum2(buf, exponent)))
			goto out;
		if (EC_KEY_set_private_key(k->ecdsa, exponent) != 1) {
			r = SSH_ERR_LIBCRYPTO_ERROR;
			goto out;
		}
		if ((r = sshkey_ec_validate_public(EC_KEY_get0_group(k->ecdsa),
		    EC_KEY_get0_public_key(k->ecdsa))) != 0 ||
		    (r = sshkey_ec_validate_private(k->ecdsa)) != 0)
			goto out;
		break;
	case KEY_ECDSA_CERT:
		if ((exponent = BN_new()) == NULL) {
			r = SSH_ERR_LIBCRYPTO_ERROR;
			goto out;
		}
		if ((r = sshkey_froms(buf, &k)) != 0 ||
		    (r = sshbuf_get_bignum2(buf, exponent)) != 0)
			goto out;
		if (EC_KEY_set_private_key(k->ecdsa, exponent) != 1) {
			r = SSH_ERR_LIBCRYPTO_ERROR;
			goto out;
		}
		if ((r = sshkey_ec_validate_public(EC_KEY_get0_group(k->ecdsa),
		    EC_KEY_get0_public_key(k->ecdsa))) != 0 ||
		    (r = sshkey_ec_validate_private(k->ecdsa)) != 0)
			goto out;
		break;
# endif /* OPENSSL_HAS_ECC */
	case KEY_RSA:
		if ((k = sshkey_new_private(type)) == NULL) {
			r = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		if ((rsa_n = BN_new()) == NULL ||
		    (rsa_e = BN_new()) == NULL ||
		    (rsa_d = BN_new()) == NULL ||
		    (rsa_iqmp = BN_new()) == NULL ||
		    (rsa_p = BN_new()) == NULL ||
		    (rsa_q = BN_new()) == NULL) {
			r = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		if ((r = sshbuf_get_bignum2(buf, rsa_n)) != 0 ||
		    (r = sshbuf_get_bignum2(buf, rsa_e)) != 0 ||
		    (r = sshbuf_get_bignum2(buf, rsa_d)) != 0 ||
		    (r = sshbuf_get_bignum2(buf, rsa_iqmp)) != 0 ||
		    (r = sshbuf_get_bignum2(buf, rsa_p)) != 0 ||
		    (r = sshbuf_get_bignum2(buf, rsa_q)) != 0)
			goto out;
		if (!RSA_set0_key(k->rsa, rsa_n, rsa_e, rsa_d)) {
			r = SSH_ERR_LIBCRYPTO_ERROR;
			goto out;
		}
		rsa_n = rsa_e = rsa_d = NULL; /* transferred */
		if (!RSA_set0_factors(k->rsa, rsa_p, rsa_q)) {
			r = SSH_ERR_LIBCRYPTO_ERROR;
			goto out;
		}
		rsa_p = rsa_q = NULL; /* transferred */
		if ((r = check_rsa_length(k->rsa)) != 0)
			goto out;
		if ((r = ssh_rsa_complete_crt_parameters(k, rsa_iqmp)) != 0)
			goto out;
		break;
	case KEY_RSA_CERT:
		if ((rsa_d = BN_new()) == NULL ||
		    (rsa_iqmp = BN_new()) == NULL ||
		    (rsa_p = BN_new()) == NULL ||
		    (rsa_q = BN_new()) == NULL) {
			r = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		if ((r = sshkey_froms(buf, &k)) != 0 ||
		    (r = sshbuf_get_bignum2(buf, rsa_d)) != 0 ||
		    (r = sshbuf_get_bignum2(buf, rsa_iqmp)) != 0 ||
		    (r = sshbuf_get_bignum2(buf, rsa_p)) != 0 ||
		    (r = sshbuf_get_bignum2(buf, rsa_q)) != 0)
			goto out;
		if (!RSA_set0_key(k->rsa, NULL, NULL, rsa_d)) {
			r = SSH_ERR_LIBCRYPTO_ERROR;
			goto out;
		}
		rsa_d = NULL; /* transferred */
		if (!RSA_set0_factors(k->rsa, rsa_p, rsa_q)) {
			r = SSH_ERR_LIBCRYPTO_ERROR;
			goto out;
		}
		rsa_p = rsa_q = NULL; /* transferred */
		if ((r = check_rsa_length(k->rsa)) != 0)
			goto out;
		if ((r = ssh_rsa_complete_crt_parameters(k, rsa_iqmp)) != 0)
			goto out;
		break;
#endif /* WITH_OPENSSL */
	case KEY_ED25519:
		if ((k = FUNC25(type)) == NULL) {
			r = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		if ((r = FUNC18(buf, &ed25519_pk, &pklen)) != 0 ||
		    (r = FUNC18(buf, &ed25519_sk, &sklen)) != 0)
			goto out;
		if (pklen != ED25519_PK_SZ || sklen != ED25519_SK_SZ) {
			r = SSH_ERR_INVALID_FORMAT;
			goto out;
		}
		k->ed25519_pk = ed25519_pk;
		k->ed25519_sk = ed25519_sk;
		ed25519_pk = ed25519_sk = NULL;
		break;
	case KEY_ED25519_CERT:
		if ((r = FUNC24(buf, &k)) != 0 ||
		    (r = FUNC18(buf, &ed25519_pk, &pklen)) != 0 ||
		    (r = FUNC18(buf, &ed25519_sk, &sklen)) != 0)
			goto out;
		if (pklen != ED25519_PK_SZ || sklen != ED25519_SK_SZ) {
			r = SSH_ERR_INVALID_FORMAT;
			goto out;
		}
		k->ed25519_pk = ed25519_pk;
		k->ed25519_sk = ed25519_sk;
		ed25519_pk = ed25519_sk = NULL;
		break;
#ifdef WITH_XMSS
	case KEY_XMSS:
		if ((k = sshkey_new_private(type)) == NULL) {
			r = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		if ((r = sshbuf_get_cstring(buf, &xmss_name, NULL)) != 0 ||
		    (r = sshkey_xmss_init(k, xmss_name)) != 0 ||
		    (r = sshbuf_get_string(buf, &xmss_pk, &pklen)) != 0 ||
		    (r = sshbuf_get_string(buf, &xmss_sk, &sklen)) != 0)
			goto out;
		if (pklen != sshkey_xmss_pklen(k) ||
		    sklen != sshkey_xmss_sklen(k)) {
			r = SSH_ERR_INVALID_FORMAT;
			goto out;
		}
		k->xmss_pk = xmss_pk;
		k->xmss_sk = xmss_sk;
		xmss_pk = xmss_sk = NULL;
		/* optional internal state */
		if ((r = sshkey_xmss_deserialize_state_opt(k, buf)) != 0)
			goto out;
		break;
	case KEY_XMSS_CERT:
		if ((r = sshkey_froms(buf, &k)) != 0 ||
		    (r = sshbuf_get_cstring(buf, &xmss_name, NULL)) != 0 ||
		    (r = sshbuf_get_string(buf, &xmss_pk, &pklen)) != 0 ||
		    (r = sshbuf_get_string(buf, &xmss_sk, &sklen)) != 0)
			goto out;
		if (strcmp(xmss_name, k->xmss_name)) {
			r = SSH_ERR_INVALID_FORMAT;
			goto out;
		}
		if (pklen != sshkey_xmss_pklen(k) ||
		    sklen != sshkey_xmss_sklen(k)) {
			r = SSH_ERR_INVALID_FORMAT;
			goto out;
		}
		k->xmss_pk = xmss_pk;
		k->xmss_sk = xmss_sk;
		xmss_pk = xmss_sk = NULL;
		/* optional internal state */
		if ((r = sshkey_xmss_deserialize_state_opt(k, buf)) != 0)
			goto out;
		break;
#endif /* WITH_XMSS */
	default:
		r = SSH_ERR_KEY_TYPE_UNKNOWN;
		goto out;
	}
#ifdef WITH_OPENSSL
	/* enable blinding */
	switch (k->type) {
	case KEY_RSA:
	case KEY_RSA_CERT:
		if (RSA_blinding_on(k->rsa, NULL) != 1) {
			r = SSH_ERR_LIBCRYPTO_ERROR;
			goto out;
		}
		break;
	}
#endif /* WITH_OPENSSL */
	/* success */
	r = 0;
	if (kp != NULL) {
		*kp = k;
		k = NULL;
	}
 out:
	FUNC12(tname);
	FUNC12(curve);
#ifdef WITH_OPENSSL
	BN_clear_free(exponent);
	BN_clear_free(dsa_p);
	BN_clear_free(dsa_q);
	BN_clear_free(dsa_g);
	BN_clear_free(dsa_pub_key);
	BN_clear_free(dsa_priv_key);
	BN_clear_free(rsa_n);
	BN_clear_free(rsa_e);
	BN_clear_free(rsa_d);
	BN_clear_free(rsa_p);
	BN_clear_free(rsa_q);
	BN_clear_free(rsa_iqmp);
#endif /* WITH_OPENSSL */
	FUNC23(k);
	FUNC13(ed25519_pk, pklen);
	FUNC13(ed25519_sk, sklen);
	FUNC12(xmss_name);
	FUNC13(xmss_pk, pklen);
	FUNC13(xmss_sk, sklen);
	return r;
}