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
struct sshkey {int /*<<< orphan*/ * rsa; int /*<<< orphan*/  type; } ;
struct sshbuf {int dummy; } ;
typedef  int /*<<< orphan*/  digest ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ KEY_RSA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int SSH_DIGEST_MAX_LENGTH ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int SSH_ERR_INVALID_FORMAT ; 
 int SSH_ERR_KEY_BITS_MISMATCH ; 
 int SSH_ERR_KEY_LENGTH ; 
 int SSH_ERR_KEY_TYPE_MISMATCH ; 
 int SSH_ERR_SIGNATURE_INVALID ; 
 int SSH_ERR_UNEXPECTED_TRAILING_DATA ; 
 scalar_t__ SSH_RSA_MINIMUM_MODULUS_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int FUNC7 (int,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC9 (char*) ; 
 int FUNC10 (char const*) ; 
 size_t FUNC11 (int) ; 
 int FUNC12 (int,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sshbuf*) ; 
 struct sshbuf* FUNC14 (int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC15 (struct sshbuf*,char**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (struct sshbuf*,int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC17 (struct sshbuf*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (char const*,char*) ; 

int
FUNC20(const struct sshkey *key,
    const u_char *sig, size_t siglen, const u_char *data, size_t datalen,
    const char *alg)
{
	const BIGNUM *rsa_n;
	char *sigtype = NULL;
	int hash_alg, want_alg, ret = SSH_ERR_INTERNAL_ERROR;
	size_t len = 0, diff, modlen, dlen;
	struct sshbuf *b = NULL;
	u_char digest[SSH_DIGEST_MAX_LENGTH], *osigblob, *sigblob = NULL;

	if (key == NULL || key->rsa == NULL ||
	    FUNC18(key->type) != KEY_RSA ||
	    sig == NULL || siglen == 0)
		return SSH_ERR_INVALID_ARGUMENT;
	FUNC1(key->rsa, &rsa_n, NULL, NULL);
	if (FUNC0(rsa_n) < SSH_RSA_MINIMUM_MODULUS_SIZE)
		return SSH_ERR_KEY_LENGTH;

	if ((b = FUNC14(sig, siglen)) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	if (FUNC15(b, &sigtype, NULL) != 0) {
		ret = SSH_ERR_INVALID_FORMAT;
		goto out;
	}
	if ((hash_alg = FUNC9(sigtype)) == -1) {
		ret = SSH_ERR_KEY_TYPE_MISMATCH;
		goto out;
	}
	/*
	 * Allow ssh-rsa-cert-v01 certs to generate SHA2 signatures for
	 * legacy reasons, but otherwise the signature type should match.
	 */
	if (alg != NULL && FUNC19(alg, "ssh-rsa-cert-v01@openssh.com") != 0) {
		if ((want_alg = FUNC10(alg)) == -1) {
			ret = SSH_ERR_INVALID_ARGUMENT;
			goto out;
		}
		if (hash_alg != want_alg) {
			ret = SSH_ERR_SIGNATURE_INVALID;
			goto out;
		}
	}
	if (FUNC16(b, &sigblob, &len) != 0) {
		ret = SSH_ERR_INVALID_FORMAT;
		goto out;
	}
	if (FUNC17(b) != 0) {
		ret = SSH_ERR_UNEXPECTED_TRAILING_DATA;
		goto out;
	}
	/* RSA_verify expects a signature of RSA_size */
	modlen = FUNC2(key->rsa);
	if (len > modlen) {
		ret = SSH_ERR_KEY_BITS_MISMATCH;
		goto out;
	} else if (len < modlen) {
		diff = modlen - len;
		osigblob = sigblob;
		if ((sigblob = FUNC8(sigblob, modlen)) == NULL) {
			sigblob = osigblob; /* put it back for clear/free */
			ret = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		FUNC6(sigblob + diff, sigblob, len);
		FUNC3(sigblob, diff);
		len = modlen;
	}
	if ((dlen = FUNC11(hash_alg)) == 0) {
		ret = SSH_ERR_INTERNAL_ERROR;
		goto out;
	}
	if ((ret = FUNC12(hash_alg, data, datalen,
	    digest, sizeof(digest))) != 0)
		goto out;

	ret = FUNC7(hash_alg, digest, dlen, sigblob, len,
	    key->rsa);
 out:
	FUNC5(sigblob, len);
	FUNC4(sigtype);
	FUNC13(b);
	FUNC3(digest, sizeof(digest));
	return ret;
}