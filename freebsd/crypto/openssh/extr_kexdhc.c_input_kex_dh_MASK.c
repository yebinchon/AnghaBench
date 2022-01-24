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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct sshkey {scalar_t__ type; scalar_t__ ecdsa_nid; } ;
struct ssh {int /*<<< orphan*/  compat; struct kex* kex; } ;
struct kex {int (* verify_host_key ) (struct sshkey*,struct ssh*) ;scalar_t__ hostkey_type; scalar_t__ hostkey_nid; size_t session_id_len; int /*<<< orphan*/ * dh; int /*<<< orphan*/ * session_id; int /*<<< orphan*/  hostkey_alg; int /*<<< orphan*/  peer; int /*<<< orphan*/  my; int /*<<< orphan*/  server_version_string; int /*<<< orphan*/  client_version_string; int /*<<< orphan*/  hash_alg; } ;
typedef  int /*<<< orphan*/  hash ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 size_t FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ KEY_ECDSA ; 
 int SSH_DIGEST_MAX_LENGTH ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int SSH_ERR_KEY_TYPE_MISMATCH ; 
 int SSH_ERR_LIBCRYPTO_ERROR ; 
 int SSH_ERR_MESSAGE_INCOMPLETE ; 
 int SSH_ERR_SIGNATURE_INVALID ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct ssh*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC17 (struct ssh*) ; 
 void* FUNC18 (size_t) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct sshkey*) ; 
 int FUNC23 (int /*<<< orphan*/ *,size_t,struct sshkey**) ; 
 int FUNC24 (struct sshkey*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct ssh*,char*) ; 
 int FUNC26 (struct ssh*,int /*<<< orphan*/ *) ; 
 int FUNC27 (struct ssh*) ; 
 int FUNC28 (struct ssh*,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC29 (struct sshkey*,struct ssh*) ; 

__attribute__((used)) static int
FUNC30(int type, u_int32_t seq, struct ssh *ssh)
{
	struct kex *kex = ssh->kex;
	BIGNUM *dh_server_pub = NULL, *shared_secret = NULL;
	const BIGNUM *pub_key;
	struct sshkey *server_host_key = NULL;
	u_char *kbuf = NULL, *server_host_key_blob = NULL, *signature = NULL;
	u_char hash[SSH_DIGEST_MAX_LENGTH];
	size_t klen = 0, slen, sbloblen, hashlen;
	int kout, r;

	if (kex->verify_host_key == NULL) {
		r = SSH_ERR_INVALID_ARGUMENT;
		goto out;
	}
	/* key, cert */
	if ((r = FUNC28(ssh, &server_host_key_blob,
	    &sbloblen)) != 0 ||
	    (r = FUNC23(server_host_key_blob, sbloblen,
	    &server_host_key)) != 0)
		goto out;
	if (server_host_key->type != kex->hostkey_type ||
	    (kex->hostkey_type == KEY_ECDSA &&
	    server_host_key->ecdsa_nid != kex->hostkey_nid)) {
		r = SSH_ERR_KEY_TYPE_MISMATCH;
		goto out;
	}
	if (kex->verify_host_key(server_host_key, ssh) == -1) {
		r = SSH_ERR_SIGNATURE_INVALID;
		goto out;
	}
	/* DH parameter f, server public DH key */
	if ((dh_server_pub = FUNC2()) == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	/* signed H */
	if ((r = FUNC26(ssh, dh_server_pub)) != 0 ||
	    (r = FUNC28(ssh, &signature, &slen)) != 0 ||
	    (r = FUNC27(ssh)) != 0)
		goto out;
#ifdef DEBUG_KEXDH
	fprintf(stderr, "dh_server_pub= ");
	BN_print_fp(stderr, dh_server_pub);
	fprintf(stderr, "\n");
	debug("bits %d", BN_num_bits(dh_server_pub));
#endif
	if (!FUNC10(kex->dh, dh_server_pub)) {
		FUNC25(ssh, "bad server public DH value");
		r = SSH_ERR_MESSAGE_INCOMPLETE;
		goto out;
	}

	klen = FUNC8(kex->dh);
	if ((kbuf = FUNC18(klen)) == NULL ||
	    (shared_secret = FUNC2()) == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	if ((kout = FUNC5(kbuf, dh_server_pub, kex->dh)) < 0 ||
	    FUNC0(kbuf, kout, shared_secret) == NULL) {
		r = SSH_ERR_LIBCRYPTO_ERROR;
		goto out;
	}
#ifdef DEBUG_KEXDH
	dump_digest("shared secret", kbuf, kout);
#endif

	/* calc and verify H */
	FUNC7(kex->dh, &pub_key, NULL);
	hashlen = sizeof(hash);
	if ((r = FUNC16(
	    kex->hash_alg,
	    kex->client_version_string,
	    kex->server_version_string,
	    FUNC21(kex->my), FUNC20(kex->my),
	    FUNC21(kex->peer), FUNC20(kex->peer),
	    server_host_key_blob, sbloblen,
	    pub_key,
	    dh_server_pub,
	    shared_secret,
	    hash, &hashlen)) != 0)
		goto out;

	if ((r = FUNC24(server_host_key, signature, slen, hash, hashlen,
	    kex->hostkey_alg, ssh->compat)) != 0)
		goto out;

	/* save session id */
	if (kex->session_id == NULL) {
		kex->session_id_len = hashlen;
		kex->session_id = FUNC18(kex->session_id_len);
		if (kex->session_id == NULL) {
			r = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		FUNC19(kex->session_id, hash, kex->session_id_len);
	}

	if ((r = FUNC15(ssh, hash, hashlen, shared_secret)) == 0)
		r = FUNC17(ssh);
 out:
	FUNC12(hash, sizeof(hash));
	FUNC6(kex->dh);
	kex->dh = NULL;
	FUNC1(dh_server_pub);
	if (kbuf) {
		FUNC12(kbuf, klen);
		FUNC14(kbuf);
	}
	FUNC1(shared_secret);
	FUNC22(server_host_key);
	FUNC14(server_host_key_blob);
	FUNC14(signature);
	return r;
}