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
struct sshkey {int type; int ecdsa_nid; int /*<<< orphan*/ * ecdsa; int /*<<< orphan*/  dsa; int /*<<< orphan*/  rsa; } ;
struct sshbuf {int dummy; } ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ EVP_PKEY_DSA ; 
 scalar_t__ EVP_PKEY_EC ; 
 scalar_t__ EVP_PKEY_RSA ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ INT_MAX ; 
 int KEY_DSA ; 
 int KEY_ECDSA ; 
 int KEY_RSA ; 
 int KEY_UNSPEC ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INVALID_FORMAT ; 
 int SSH_ERR_LIBCRYPTO_ERROR ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int FUNC17 () ; 
 scalar_t__ FUNC18 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC19 (struct sshbuf*) ; 
 int /*<<< orphan*/ * FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (struct sshkey*) ; 
 struct sshkey* FUNC26 (int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC27(struct sshbuf *blob, int type,
    const char *passphrase, struct sshkey **keyp)
{
	EVP_PKEY *pk = NULL;
	struct sshkey *prv = NULL;
	BIO *bio = NULL;
	int r;

	if (keyp != NULL)
		*keyp = NULL;

	if ((bio = FUNC1(FUNC2())) == NULL || FUNC18(blob) > INT_MAX)
		return SSH_ERR_ALLOC_FAIL;
	if (FUNC3(bio, FUNC19(blob), FUNC18(blob)) !=
	    (int)FUNC18(blob)) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}

	FUNC16();
	if ((pk = FUNC12(bio, NULL, NULL,
	    (char *)passphrase)) == NULL) {
		r = FUNC17();
		goto out;
	}
	if (FUNC7(pk) == EVP_PKEY_RSA &&
	    (type == KEY_UNSPEC || type == KEY_RSA)) {
		if ((prv = FUNC26(KEY_UNSPEC)) == NULL) {
			r = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		prv->rsa = FUNC11(pk);
		prv->type = KEY_RSA;
#ifdef DEBUG_PK
		RSA_print_fp(stderr, prv->rsa, 8);
#endif
		if (FUNC13(prv->rsa, NULL) != 1) {
			r = SSH_ERR_LIBCRYPTO_ERROR;
			goto out;
		}
		if ((r = FUNC15(prv->rsa)) != 0)
			goto out;
	} else if (FUNC7(pk) == EVP_PKEY_DSA &&
	    (type == KEY_UNSPEC || type == KEY_DSA)) {
		if ((prv = FUNC26(KEY_UNSPEC)) == NULL) {
			r = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		prv->dsa = FUNC9(pk);
		prv->type = KEY_DSA;
#ifdef DEBUG_PK
		DSA_print_fp(stderr, prv->dsa, 8);
#endif
#ifdef OPENSSL_HAS_ECC
	} else if (EVP_PKEY_base_id(pk) == EVP_PKEY_EC &&
	    (type == KEY_UNSPEC || type == KEY_ECDSA)) {
		if ((prv = sshkey_new(KEY_UNSPEC)) == NULL) {
			r = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		prv->ecdsa = EVP_PKEY_get1_EC_KEY(pk);
		prv->type = KEY_ECDSA;
		prv->ecdsa_nid = sshkey_ecdsa_key_to_nid(prv->ecdsa);
		if (prv->ecdsa_nid == -1 ||
		    sshkey_curve_nid_to_name(prv->ecdsa_nid) == NULL ||
		    sshkey_ec_validate_public(EC_KEY_get0_group(prv->ecdsa),
		    EC_KEY_get0_public_key(prv->ecdsa)) != 0 ||
		    sshkey_ec_validate_private(prv->ecdsa) != 0) {
			r = SSH_ERR_INVALID_FORMAT;
			goto out;
		}
# ifdef DEBUG_PK
		if (prv != NULL && prv->ecdsa != NULL)
			sshkey_dump_ec_key(prv->ecdsa);
# endif
#endif /* OPENSSL_HAS_ECC */
	} else {
		r = SSH_ERR_INVALID_FORMAT;
		goto out;
	}
	r = 0;
	if (keyp != NULL) {
		*keyp = prv;
		prv = NULL;
	}
 out:
	FUNC0(bio);
	FUNC8(pk);
	FUNC25(prv);
	return r;
}