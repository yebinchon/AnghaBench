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
typedef  int /*<<< orphan*/  const u_char ;
typedef  int /*<<< orphan*/  RSA ;

/* Variables and functions */
 int /*<<< orphan*/  RSA_PKCS1_PADDING ; 
 int FUNC0 (size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 size_t SSHBUF_MAX_BIGNUM ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int SSH_ERR_INVALID_FORMAT ; 
 int SSH_ERR_LIBCRYPTO_ERROR ; 
 int SSH_ERR_SIGNATURE_INVALID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  const* FUNC3 (size_t) ; 
 int FUNC4 (int,int /*<<< orphan*/  const**,size_t*) ; 
 size_t FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static int
FUNC7(int hash_alg, u_char *hash, size_t hashlen,
    u_char *sigbuf, size_t siglen, RSA *rsa)
{
	size_t rsasize = 0, oidlen = 0, hlen = 0;
	int ret, len, oidmatch, hashmatch;
	const u_char *oid = NULL;
	u_char *decrypted = NULL;

	if ((ret = FUNC4(hash_alg, &oid, &oidlen)) != 0)
		return ret;
	ret = SSH_ERR_INTERNAL_ERROR;
	hlen = FUNC5(hash_alg);
	if (hashlen != hlen) {
		ret = SSH_ERR_INVALID_ARGUMENT;
		goto done;
	}
	rsasize = FUNC1(rsa);
	if (rsasize <= 0 || rsasize > SSHBUF_MAX_BIGNUM ||
	    siglen == 0 || siglen > rsasize) {
		ret = SSH_ERR_INVALID_ARGUMENT;
		goto done;
	}
	if ((decrypted = FUNC3(rsasize)) == NULL) {
		ret = SSH_ERR_ALLOC_FAIL;
		goto done;
	}
	if ((len = FUNC0(siglen, sigbuf, decrypted, rsa,
	    RSA_PKCS1_PADDING)) < 0) {
		ret = SSH_ERR_LIBCRYPTO_ERROR;
		goto done;
	}
	if (len < 0 || (size_t)len != hlen + oidlen) {
		ret = SSH_ERR_INVALID_FORMAT;
		goto done;
	}
	oidmatch = FUNC6(decrypted, oid, oidlen) == 0;
	hashmatch = FUNC6(decrypted + oidlen, hash, hlen) == 0;
	if (!oidmatch || !hashmatch) {
		ret = SSH_ERR_SIGNATURE_INVALID;
		goto done;
	}
	ret = 0;
done:
	FUNC2(decrypted, rsasize);
	return ret;
}