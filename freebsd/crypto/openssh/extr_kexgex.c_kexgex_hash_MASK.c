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
struct sshbuf {int dummy; } ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  SSH2_MSG_KEXINIT ; 
 int SSH_DIGEST_SHA1 ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int SSH_ERR_LIBCRYPTO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (int,struct sshbuf*,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sshbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sshbuf*) ; 
 struct sshbuf* FUNC5 () ; 
 int FUNC6 (struct sshbuf*,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC7 (struct sshbuf*,int /*<<< orphan*/  const*) ; 
 int FUNC8 (struct sshbuf*,char const*) ; 
 int FUNC9 (struct sshbuf*,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC10 (struct sshbuf*,int) ; 
 int FUNC11 (struct sshbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC12(
    int hash_alg,
    const char *client_version_string,
    const char *server_version_string,
    const u_char *ckexinit, size_t ckexinitlen,
    const u_char *skexinit, size_t skexinitlen,
    const u_char *serverhostkeyblob, size_t sbloblen,
    int min, int wantbits, int max,
    const BIGNUM *prime,
    const BIGNUM *gen,
    const BIGNUM *client_dh_pub,
    const BIGNUM *server_dh_pub,
    const BIGNUM *shared_secret,
    u_char *hash, size_t *hashlen)
{
	struct sshbuf *b;
	int r;

	if (*hashlen < FUNC2(SSH_DIGEST_SHA1))
		return SSH_ERR_INVALID_ARGUMENT;
	if ((b = FUNC5()) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	if ((r = FUNC8(b, client_version_string)) != 0 ||
	    (r = FUNC8(b, server_version_string)) != 0 ||
	    /* kexinit messages: fake header: len+SSH2_MSG_KEXINIT */
	    (r = FUNC10(b, ckexinitlen+1)) != 0 ||
	    (r = FUNC11(b, SSH2_MSG_KEXINIT)) != 0 ||
	    (r = FUNC6(b, ckexinit, ckexinitlen)) != 0 ||
	    (r = FUNC10(b, skexinitlen+1)) != 0 ||
	    (r = FUNC11(b, SSH2_MSG_KEXINIT)) != 0 ||
	    (r = FUNC6(b, skexinit, skexinitlen)) != 0 ||
	    (r = FUNC9(b, serverhostkeyblob, sbloblen)) != 0 ||
	    (min != -1 && (r = FUNC10(b, min)) != 0) ||
	    (r = FUNC10(b, wantbits)) != 0 ||
	    (max != -1 && (r = FUNC10(b, max)) != 0) ||
	    (r = FUNC7(b, prime)) != 0 ||
	    (r = FUNC7(b, gen)) != 0 ||
	    (r = FUNC7(b, client_dh_pub)) != 0 ||
	    (r = FUNC7(b, server_dh_pub)) != 0 ||
	    (r = FUNC7(b, shared_secret)) != 0) {
		FUNC4(b);
		return r;
	}
#ifdef DEBUG_KEXDH
	sshbuf_dump(b, stderr);
#endif
	if (FUNC1(hash_alg, b, hash, *hashlen) != 0) {
		FUNC4(b);
		return SSH_ERR_LIBCRYPTO_ERROR;
	}
	FUNC4(b);
	*hashlen = FUNC2(hash_alg);
#ifdef DEBUG_KEXDH
	dump_digest("hash", hash, *hashlen);
#endif
	return 0;
}