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
typedef  size_t u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct sshkey {int /*<<< orphan*/ * rsa; int /*<<< orphan*/  type; } ;
struct sshbuf {int dummy; } ;
typedef  int /*<<< orphan*/  digest ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ KEY_RSA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 size_t SSHBUF_MAX_BIGNUM ; 
 int SSH_DIGEST_MAX_LENGTH ; 
 int SSH_DIGEST_SHA1 ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int SSH_ERR_KEY_LENGTH ; 
 int SSH_ERR_LIBCRYPTO_ERROR ; 
 scalar_t__ SSH_RSA_MINIMUM_MODULUS_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (char const*) ; 
 size_t FUNC12 (int) ; 
 int FUNC13 (int,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sshbuf*) ; 
 size_t FUNC15 (struct sshbuf*) ; 
 struct sshbuf* FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct sshbuf*) ; 
 int FUNC18 (struct sshbuf*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct sshbuf*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (char const*) ; 

int
FUNC22(const struct sshkey *key, u_char **sigp, size_t *lenp,
    const u_char *data, size_t datalen, const char *alg_ident)
{
	const BIGNUM *rsa_n;
	u_char digest[SSH_DIGEST_MAX_LENGTH], *sig = NULL;
	size_t slen = 0;
	u_int dlen, len;
	int nid, hash_alg, ret = SSH_ERR_INTERNAL_ERROR;
	struct sshbuf *b = NULL;

	if (lenp != NULL)
		*lenp = 0;
	if (sigp != NULL)
		*sigp = NULL;

	if (alg_ident == NULL || FUNC21(alg_ident) == 0)
		hash_alg = SSH_DIGEST_SHA1;
	else
		hash_alg = FUNC11(alg_ident);
	if (key == NULL || key->rsa == NULL || hash_alg == -1 ||
	    FUNC20(key->type) != KEY_RSA)
		return SSH_ERR_INVALID_ARGUMENT;
	FUNC1(key->rsa, &rsa_n, NULL, NULL);
	if (FUNC0(rsa_n) < SSH_RSA_MINIMUM_MODULUS_SIZE)
		return SSH_ERR_KEY_LENGTH;
	slen = FUNC3(key->rsa);
	if (slen <= 0 || slen > SSHBUF_MAX_BIGNUM)
		return SSH_ERR_INVALID_ARGUMENT;

	/* hash the data */
	nid = FUNC10(hash_alg);
	if ((dlen = FUNC12(hash_alg)) == 0)
		return SSH_ERR_INTERNAL_ERROR;
	if ((ret = FUNC13(hash_alg, data, datalen,
	    digest, sizeof(digest))) != 0)
		goto out;

	if ((sig = FUNC6(slen)) == NULL) {
		ret = SSH_ERR_ALLOC_FAIL;
		goto out;
	}

	if (FUNC2(nid, digest, dlen, sig, &len, key->rsa) != 1) {
		ret = SSH_ERR_LIBCRYPTO_ERROR;
		goto out;
	}
	if (len < slen) {
		size_t diff = slen - len;
		FUNC8(sig + diff, sig, len);
		FUNC4(sig, diff);
	} else if (len > slen) {
		ret = SSH_ERR_INTERNAL_ERROR;
		goto out;
	}
	/* encode signature */
	if ((b = FUNC16()) == NULL) {
		ret = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	if ((ret = FUNC18(b, FUNC9(hash_alg))) != 0 ||
	    (ret = FUNC19(b, sig, slen)) != 0)
		goto out;
	len = FUNC15(b);
	if (sigp != NULL) {
		if ((*sigp = FUNC6(len)) == NULL) {
			ret = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		FUNC7(*sigp, FUNC17(b), len);
	}
	if (lenp != NULL)
		*lenp = len;
	ret = 0;
 out:
	FUNC4(digest, sizeof(digest));
	FUNC5(sig, slen);
	FUNC14(b);
	return ret;
}