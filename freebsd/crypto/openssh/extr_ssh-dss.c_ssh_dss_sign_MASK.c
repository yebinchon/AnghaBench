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
typedef  int /*<<< orphan*/  u_char ;
struct sshkey {int /*<<< orphan*/ * dsa; int /*<<< orphan*/  type; } ;
struct sshbuf {int dummy; } ;
typedef  int /*<<< orphan*/  digest ;
typedef  int /*<<< orphan*/  DSA_SIG ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 size_t INTBLOB_LEN ; 
 scalar_t__ KEY_DSA ; 
 int SIGBLOB_LEN ; 
 int SSH_DIGEST_MAX_LENGTH ; 
 int /*<<< orphan*/  SSH_DIGEST_SHA1 ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int SSH_ERR_LIBCRYPTO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sshbuf*) ; 
 size_t FUNC11 (struct sshbuf*) ; 
 struct sshbuf* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct sshbuf*) ; 
 int FUNC14 (struct sshbuf*,char*) ; 
 int FUNC15 (struct sshbuf*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 

int
FUNC17(const struct sshkey *key, u_char **sigp, size_t *lenp,
    const u_char *data, size_t datalen, u_int compat)
{
	DSA_SIG *sig = NULL;
	const BIGNUM *sig_r, *sig_s;
	u_char digest[SSH_DIGEST_MAX_LENGTH], sigblob[SIGBLOB_LEN];
	size_t rlen, slen, len, dlen = FUNC8(SSH_DIGEST_SHA1);
	struct sshbuf *b = NULL;
	int ret = SSH_ERR_INVALID_ARGUMENT;

	if (lenp != NULL)
		*lenp = 0;
	if (sigp != NULL)
		*sigp = NULL;

	if (key == NULL || key->dsa == NULL ||
	    FUNC16(key->type) != KEY_DSA)
		return SSH_ERR_INVALID_ARGUMENT;
	if (dlen == 0)
		return SSH_ERR_INTERNAL_ERROR;

	if ((ret = FUNC9(SSH_DIGEST_SHA1, data, datalen,
	    digest, sizeof(digest))) != 0)
		goto out;

	if ((sig = FUNC4(digest, dlen, key->dsa)) == NULL) {
		ret = SSH_ERR_LIBCRYPTO_ERROR;
		goto out;
	}

	FUNC3(sig, &sig_r, &sig_s);
	rlen = FUNC1(sig_r);
	slen = FUNC1(sig_s);
	if (rlen > INTBLOB_LEN || slen > INTBLOB_LEN) {
		ret = SSH_ERR_INTERNAL_ERROR;
		goto out;
	}
	FUNC5(sigblob, SIGBLOB_LEN);
	FUNC0(sig_r, sigblob + SIGBLOB_LEN - INTBLOB_LEN - rlen);
	FUNC0(sig_s, sigblob + SIGBLOB_LEN - slen);

	if ((b = FUNC12()) == NULL) {
		ret = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	if ((ret = FUNC14(b, "ssh-dss")) != 0 ||
	    (ret = FUNC15(b, sigblob, SIGBLOB_LEN)) != 0)
		goto out;

	len = FUNC11(b);
	if (sigp != NULL) {
		if ((*sigp = FUNC6(len)) == NULL) {
			ret = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		FUNC7(*sigp, FUNC13(b), len);
	}
	if (lenp != NULL)
		*lenp = len;
	ret = 0;
 out:
	FUNC5(digest, sizeof(digest));
	FUNC2(sig);
	FUNC10(b);
	return ret;
}