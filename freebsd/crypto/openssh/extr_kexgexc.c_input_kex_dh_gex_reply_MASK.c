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
struct ssh {int compat; struct kex* kex; } ;
struct kex {int (* verify_host_key ) (struct sshkey*,struct ssh*) ;scalar_t__ hostkey_type; scalar_t__ hostkey_nid; int min; int max; size_t session_id_len; int /*<<< orphan*/ * dh; int /*<<< orphan*/ * session_id; int /*<<< orphan*/  hostkey_alg; int /*<<< orphan*/  nbits; int /*<<< orphan*/  peer; int /*<<< orphan*/  my; int /*<<< orphan*/  server_version_string; int /*<<< orphan*/  client_version_string; int /*<<< orphan*/  hash_alg; } ;
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
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ KEY_ECDSA ; 
 int SSH_DIGEST_MAX_LENGTH ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int SSH_ERR_KEY_TYPE_MISMATCH ; 
 int SSH_ERR_LIBCRYPTO_ERROR ; 
 int SSH_ERR_MESSAGE_INCOMPLETE ; 
 int SSH_ERR_SIGNATURE_INVALID ; 
 int SSH_OLD_DHGEX ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (struct ssh*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int FUNC17 (struct ssh*) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*) ; 
 void* FUNC19 (size_t) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct sshkey*) ; 
 int FUNC24 (int /*<<< orphan*/ *,size_t,struct sshkey**) ; 
 int FUNC25 (struct sshkey*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (struct ssh*,char*) ; 
 int FUNC27 (struct ssh*,int /*<<< orphan*/ *) ; 
 int FUNC28 (struct ssh*) ; 
 int FUNC29 (struct ssh*,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC30 (struct sshkey*,struct ssh*) ; 

__attribute__((used)) static int
FUNC31(int type, u_int32_t seq, struct ssh *ssh)
{
	struct kex *kex = ssh->kex;
	BIGNUM *dh_server_pub = NULL, *shared_secret = NULL;
	const BIGNUM *pub_key, *dh_p, *dh_g;
	struct sshkey *server_host_key = NULL;
	u_char *kbuf = NULL, *signature = NULL, *server_host_key_blob = NULL;
	u_char hash[SSH_DIGEST_MAX_LENGTH];
	size_t klen = 0, slen, sbloblen, hashlen;
	int kout, r;

	FUNC10("got SSH2_MSG_KEX_DH_GEX_REPLY");
	if (kex->verify_host_key == NULL) {
		r = SSH_ERR_INVALID_ARGUMENT;
		goto out;
	}
	/* key, cert */
	if ((r = FUNC29(ssh, &server_host_key_blob,
	    &sbloblen)) != 0 ||
	    (r = FUNC24(server_host_key_blob, sbloblen,
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
	if ((r = FUNC27(ssh, dh_server_pub)) != 0 ||
	    (r = FUNC29(ssh, &signature, &slen)) != 0 ||
	    (r = FUNC28(ssh)) != 0)
		goto out;
#ifdef DEBUG_KEXDH
	fprintf(stderr, "dh_server_pub= ");
	BN_print_fp(stderr, dh_server_pub);
	fprintf(stderr, "\n");
	debug("bits %d", BN_num_bits(dh_server_pub));
#endif
	if (!FUNC11(kex->dh, dh_server_pub)) {
		FUNC26(ssh, "bad server public DH value");
		r = SSH_ERR_MESSAGE_INCOMPLETE;
		goto out;
	}

	klen = FUNC9(kex->dh);
	if ((kbuf = FUNC19(klen)) == NULL ||
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
	if (ssh->compat & SSH_OLD_DHGEX)
		kex->min = kex->max = -1;

	/* calc and verify H */
	FUNC7(kex->dh, &pub_key, NULL);
	FUNC8(kex->dh, &dh_p, NULL, &dh_g);
	hashlen = sizeof(hash);
	if ((r = FUNC18(
	    kex->hash_alg,
	    kex->client_version_string,
	    kex->server_version_string,
	    FUNC22(kex->my), FUNC21(kex->my),
	    FUNC22(kex->peer), FUNC21(kex->peer),
	    server_host_key_blob, sbloblen,
	    kex->min, kex->nbits, kex->max,
	    dh_p, dh_g,
	    pub_key,
	    dh_server_pub,
	    shared_secret,
	    hash, &hashlen)) != 0)
		goto out;

	if ((r = FUNC25(server_host_key, signature, slen, hash,
	    hashlen, kex->hostkey_alg, ssh->compat)) != 0)
		goto out;

	/* save session id */
	if (kex->session_id == NULL) {
		kex->session_id_len = hashlen;
		kex->session_id = FUNC19(kex->session_id_len);
		if (kex->session_id == NULL) {
			r = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		FUNC20(kex->session_id, hash, kex->session_id_len);
	}

	if ((r = FUNC16(ssh, hash, hashlen, shared_secret)) == 0)
		r = FUNC17(ssh);
 out:
	FUNC13(hash, sizeof(hash));
	FUNC6(kex->dh);
	kex->dh = NULL;
	FUNC1(dh_server_pub);
	if (kbuf) {
		FUNC13(kbuf, klen);
		FUNC15(kbuf);
	}
	FUNC1(shared_secret);
	FUNC23(server_host_key);
	FUNC15(server_host_key_blob);
	FUNC15(signature);
	return r;
}