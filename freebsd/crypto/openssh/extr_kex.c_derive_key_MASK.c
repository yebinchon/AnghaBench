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
typedef  char u_char ;
struct sshbuf {int dummy; } ;
struct ssh_digest_ctx {int dummy; } ;
struct ssh {struct kex* kex; } ;
struct kex {char* session_id; size_t session_id_len; int /*<<< orphan*/  hash_alg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int SSH_ERR_LIBCRYPTO_ERROR ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct ssh_digest_ctx*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct ssh_digest_ctx*) ; 
 struct ssh_digest_ctx* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct ssh_digest_ctx*,char*,size_t) ; 
 scalar_t__ FUNC10 (struct ssh_digest_ctx*,struct sshbuf const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC11(struct ssh *ssh, int id, u_int need, u_char *hash, u_int hashlen,
    const struct sshbuf *shared_secret, u_char **keyp)
{
	struct kex *kex = ssh->kex;
	struct ssh_digest_ctx *hashctx = NULL;
	char c = id;
	u_int have;
	size_t mdsz;
	u_char *digest;
	int r;

	if ((mdsz = FUNC5(kex->hash_alg)) == 0)
		return SSH_ERR_INVALID_ARGUMENT;
	if ((digest = FUNC1(1, FUNC0(need, mdsz))) == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}

	/* K1 = HASH(K || H || "A" || session_id) */
	if ((hashctx = FUNC8(kex->hash_alg)) == NULL ||
	    FUNC10(hashctx, shared_secret) != 0 ||
	    FUNC9(hashctx, hash, hashlen) != 0 ||
	    FUNC9(hashctx, &c, 1) != 0 ||
	    FUNC9(hashctx, kex->session_id,
	    kex->session_id_len) != 0 ||
	    FUNC6(hashctx, digest, mdsz) != 0) {
		r = SSH_ERR_LIBCRYPTO_ERROR;
		goto out;
	}
	FUNC7(hashctx);
	hashctx = NULL;

	/*
	 * expand key:
	 * Kn = HASH(K || H || K1 || K2 || ... || Kn-1)
	 * Key = K1 || K2 || ... || Kn
	 */
	for (have = mdsz; need > have; have += mdsz) {
		if ((hashctx = FUNC8(kex->hash_alg)) == NULL ||
		    FUNC10(hashctx, shared_secret) != 0 ||
		    FUNC9(hashctx, hash, hashlen) != 0 ||
		    FUNC9(hashctx, digest, have) != 0 ||
		    FUNC6(hashctx, digest + have, mdsz) != 0) {
			r = SSH_ERR_LIBCRYPTO_ERROR;
			goto out;
		}
		FUNC7(hashctx);
		hashctx = NULL;
	}
#ifdef DEBUG_KEX
	fprintf(stderr, "key '%c'== ", c);
	dump_digest("key", digest, need);
#endif
	*keyp = digest;
	digest = NULL;
	r = 0;
 out:
	FUNC4(digest);
	FUNC7(hashctx);
	return r;
}