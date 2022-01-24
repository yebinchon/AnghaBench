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
struct sshkey {int /*<<< orphan*/ * ecdsa; int /*<<< orphan*/  ecdsa_nid; int /*<<< orphan*/  type; } ;
struct sshbuf {int dummy; } ;
typedef  int /*<<< orphan*/  digest ;
typedef  int /*<<< orphan*/  ECDSA_SIG ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ KEY_ECDSA ; 
 int SSH_DIGEST_MAX_LENGTH ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int SSH_ERR_LIBCRYPTO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC6 (int) ; 
 int FUNC7 (int,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sshbuf*) ; 
 size_t FUNC9 (struct sshbuf*) ; 
 struct sshbuf* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct sshbuf*) ; 
 int FUNC12 (struct sshbuf*,int /*<<< orphan*/  const*) ; 
 int FUNC13 (struct sshbuf*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct sshbuf*,struct sshbuf*) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sshkey const*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 

int
FUNC18(const struct sshkey *key, u_char **sigp, size_t *lenp,
    const u_char *data, size_t datalen, u_int compat)
{
	ECDSA_SIG *sig = NULL;
	const BIGNUM *sig_r, *sig_s;
	int hash_alg;
	u_char digest[SSH_DIGEST_MAX_LENGTH];
	size_t len, dlen;
	struct sshbuf *b = NULL, *bb = NULL;
	int ret = SSH_ERR_INTERNAL_ERROR;

	if (lenp != NULL)
		*lenp = 0;
	if (sigp != NULL)
		*sigp = NULL;

	if (key == NULL || key->ecdsa == NULL ||
	    FUNC17(key->type) != KEY_ECDSA)
		return SSH_ERR_INVALID_ARGUMENT;

	if ((hash_alg = FUNC15(key->ecdsa_nid)) == -1 ||
	    (dlen = FUNC6(hash_alg)) == 0)
		return SSH_ERR_INTERNAL_ERROR;
	if ((ret = FUNC7(hash_alg, data, datalen,
	    digest, sizeof(digest))) != 0)
		goto out;

	if ((sig = FUNC2(digest, dlen, key->ecdsa)) == NULL) {
		ret = SSH_ERR_LIBCRYPTO_ERROR;
		goto out;
	}

	if ((bb = FUNC10()) == NULL || (b = FUNC10()) == NULL) {
		ret = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	FUNC1(sig, &sig_r, &sig_s);
	if ((ret = FUNC12(bb, sig_r)) != 0 ||
	    (ret = FUNC12(bb, sig_s)) != 0)
		goto out;
	if ((ret = FUNC13(b, FUNC16(key))) != 0 ||
	    (ret = FUNC14(b, bb)) != 0)
		goto out;
	len = FUNC9(b);
	if (sigp != NULL) {
		if ((*sigp = FUNC4(len)) == NULL) {
			ret = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		FUNC5(*sigp, FUNC11(b), len);
	}
	if (lenp != NULL)
		*lenp = len;
	ret = 0;
 out:
	FUNC3(digest, sizeof(digest));
	FUNC8(b);
	FUNC8(bb);
	FUNC0(sig);
	return ret;
}