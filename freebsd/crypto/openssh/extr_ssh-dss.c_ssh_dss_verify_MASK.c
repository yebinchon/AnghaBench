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
typedef  int /*<<< orphan*/  u_int ;
typedef  char u_char ;
struct sshkey {int /*<<< orphan*/ * dsa; int /*<<< orphan*/  type; } ;
struct sshbuf {int dummy; } ;
typedef  int /*<<< orphan*/  digest ;
typedef  int /*<<< orphan*/  DSA_SIG ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int INTBLOB_LEN ; 
 scalar_t__ KEY_DSA ; 
 size_t SIGBLOB_LEN ; 
 int SSH_DIGEST_MAX_LENGTH ; 
 int /*<<< orphan*/  SSH_DIGEST_SHA1 ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int SSH_ERR_INVALID_FORMAT ; 
 int SSH_ERR_KEY_TYPE_MISMATCH ; 
 int SSH_ERR_LIBCRYPTO_ERROR ; 
 int SSH_ERR_SIGNATURE_INVALID ; 
 int SSH_ERR_UNEXPECTED_TRAILING_DATA ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,char const*,size_t,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sshbuf*) ; 
 struct sshbuf* FUNC12 (char const*,size_t) ; 
 scalar_t__ FUNC13 (struct sshbuf*,char**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct sshbuf*,char**,size_t*) ; 
 scalar_t__ FUNC15 (struct sshbuf*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (char*,char*) ; 

int
FUNC18(const struct sshkey *key,
    const u_char *signature, size_t signaturelen,
    const u_char *data, size_t datalen, u_int compat)
{
	DSA_SIG *sig = NULL;
	BIGNUM *sig_r = NULL, *sig_s = NULL;
	u_char digest[SSH_DIGEST_MAX_LENGTH], *sigblob = NULL;
	size_t len, dlen = FUNC9(SSH_DIGEST_SHA1);
	int ret = SSH_ERR_INTERNAL_ERROR;
	struct sshbuf *b = NULL;
	char *ktype = NULL;

	if (key == NULL || key->dsa == NULL ||
	    FUNC16(key->type) != KEY_DSA ||
	    signature == NULL || signaturelen == 0)
		return SSH_ERR_INVALID_ARGUMENT;
	if (dlen == 0)
		return SSH_ERR_INTERNAL_ERROR;

	/* fetch signature */
	if ((b = FUNC12(signature, signaturelen)) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	if (FUNC13(b, &ktype, NULL) != 0 ||
	    FUNC14(b, &sigblob, &len) != 0) {
		ret = SSH_ERR_INVALID_FORMAT;
		goto out;
	}
	if (FUNC17("ssh-dss", ktype) != 0) {
		ret = SSH_ERR_KEY_TYPE_MISMATCH;
		goto out;
	}
	if (FUNC15(b) != 0) {
		ret = SSH_ERR_UNEXPECTED_TRAILING_DATA;
		goto out;
	}

	if (len != SIGBLOB_LEN) {
		ret = SSH_ERR_INVALID_FORMAT;
		goto out;
	}

	/* parse signature */
	if ((sig = FUNC4()) == NULL ||
	    (sig_r = FUNC2()) == NULL ||
	    (sig_s = FUNC2()) == NULL) {
		ret = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	if ((FUNC0(sigblob, INTBLOB_LEN, sig_r) == NULL) ||
	    (FUNC0(sigblob + INTBLOB_LEN, INTBLOB_LEN, sig_s) == NULL)) {
		ret = SSH_ERR_LIBCRYPTO_ERROR;
		goto out;
	}
	if (!FUNC5(sig, sig_r, sig_s)) {
		ret = SSH_ERR_LIBCRYPTO_ERROR;
		goto out;
	}
	sig_r = sig_s = NULL; /* transferred */

	/* sha1 the data */
	if ((ret = FUNC10(SSH_DIGEST_SHA1, data, datalen,
	    digest, sizeof(digest))) != 0)
		goto out;

	switch (FUNC6(digest, dlen, sig, key->dsa)) {
	case 1:
		ret = 0;
		break;
	case 0:
		ret = SSH_ERR_SIGNATURE_INVALID;
		goto out;
	default:
		ret = SSH_ERR_LIBCRYPTO_ERROR;
		goto out;
	}

 out:
	FUNC7(digest, sizeof(digest));
	FUNC3(sig);
	FUNC1(sig_r);
	FUNC1(sig_s);
	FUNC11(b);
	FUNC8(ktype);
	if (sigblob != NULL) {
		FUNC7(sigblob, len);
		FUNC8(sigblob);
	}
	return ret;
}