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
struct sshkey {int dummy; } ;
struct ssh {int /*<<< orphan*/  compat; struct kex* kex; } ;
struct kex {size_t session_id_len; int (* sign ) (struct sshkey*,struct sshkey*,int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * dh; int /*<<< orphan*/  hostkey_alg; int /*<<< orphan*/ * session_id; int /*<<< orphan*/  my; int /*<<< orphan*/  peer; int /*<<< orphan*/  server_version_string; int /*<<< orphan*/  client_version_string; int /*<<< orphan*/  hash_alg; int /*<<< orphan*/  hostkey_nid; int /*<<< orphan*/  hostkey_type; struct sshkey* (* load_host_private_key ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ssh*) ;struct sshkey* (* load_host_public_key ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ssh*) ;} ;
typedef  int /*<<< orphan*/  hash ;
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 size_t FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSH2_MSG_KEXDH_REPLY ; 
 int SSH_DIGEST_MAX_LENGTH ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int SSH_ERR_LIBCRYPTO_ERROR ; 
 int SSH_ERR_MESSAGE_INCOMPLETE ; 
 int SSH_ERR_NO_HOSTKEY_LOADED ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (struct ssh*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/  const*) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC18 (struct ssh*) ; 
 void* FUNC19 (size_t) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (struct sshkey*,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC24 (struct ssh*,char*) ; 
 int FUNC25 (struct ssh*,int /*<<< orphan*/  const*) ; 
 int FUNC26 (struct ssh*) ; 
 int FUNC27 (struct ssh*,int /*<<< orphan*/  const*) ; 
 int FUNC28 (struct ssh*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC29 (struct ssh*) ; 
 int FUNC30 (struct ssh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 struct sshkey* FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ssh*) ; 
 struct sshkey* FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ssh*) ; 
 int FUNC33 (struct sshkey*,struct sshkey*,int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC34(int type, u_int32_t seq, struct ssh *ssh)
{
	struct kex *kex = ssh->kex;
	BIGNUM *shared_secret = NULL, *dh_client_pub = NULL;
	const BIGNUM *pub_key;
	struct sshkey *server_host_public, *server_host_private;
	u_char *kbuf = NULL, *signature = NULL, *server_host_key_blob = NULL;
	u_char hash[SSH_DIGEST_MAX_LENGTH];
	size_t sbloblen, slen;
	size_t klen = 0, hashlen;
	int kout, r;

	if (kex->load_host_public_key == NULL ||
	    kex->load_host_private_key == NULL) {
		r = SSH_ERR_INVALID_ARGUMENT;
		goto out;
	}
	server_host_public = kex->load_host_public_key(kex->hostkey_type,
	    kex->hostkey_nid, ssh);
	server_host_private = kex->load_host_private_key(kex->hostkey_type,
	    kex->hostkey_nid, ssh);
	if (server_host_public == NULL) {
		r = SSH_ERR_NO_HOSTKEY_LOADED;
		goto out;
	}

	/* key, cert */
	if ((dh_client_pub = FUNC2()) == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	FUNC7(kex->dh, &pub_key, NULL);
	if ((r = FUNC25(ssh, dh_client_pub)) != 0 ||
	    (r = FUNC26(ssh)) != 0)
		goto out;

#ifdef DEBUG_KEXDH
	fprintf(stderr, "dh_client_pub= ");
	BN_print_fp(stderr, dh_client_pub);
	fprintf(stderr, "\n");
	debug("bits %d", BN_num_bits(dh_client_pub));
	DHparams_print_fp(stderr, kex->dh);
	fprintf(stderr, "pub= ");
	BN_print_fp(stderr, pub_key);
	fprintf(stderr, "\n");
#endif
	if (!FUNC11(kex->dh, dh_client_pub)) {
		FUNC24(ssh, "bad client public DH value");
		r = SSH_ERR_MESSAGE_INCOMPLETE;
		goto out;
	}

	klen = FUNC8(kex->dh);
	if ((kbuf = FUNC19(klen)) == NULL ||
	    (shared_secret = FUNC2()) == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	if ((kout = FUNC5(kbuf, dh_client_pub, kex->dh)) < 0 ||
	    FUNC0(kbuf, kout, shared_secret) == NULL) {
		r = SSH_ERR_LIBCRYPTO_ERROR;
		goto out;
	}
#ifdef DEBUG_KEXDH
	dump_digest("shared secret", kbuf, kout);
#endif
	if ((r = FUNC23(server_host_public, &server_host_key_blob,
	    &sbloblen)) != 0)
		goto out;
	/* calc H */
	hashlen = sizeof(hash);
	if ((r = FUNC17(
	    kex->hash_alg,
	    kex->client_version_string,
	    kex->server_version_string,
	    FUNC22(kex->peer), FUNC21(kex->peer),
	    FUNC22(kex->my), FUNC21(kex->my),
	    server_host_key_blob, sbloblen,
	    dh_client_pub,
	    pub_key,
	    shared_secret,
	    hash, &hashlen)) != 0)
		goto out;

	/* save session id := H */
	if (kex->session_id == NULL) {
		kex->session_id_len = hashlen;
		kex->session_id = FUNC19(kex->session_id_len);
		if (kex->session_id == NULL) {
			r = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		FUNC20(kex->session_id, hash, kex->session_id_len);
	}

	/* sign H */
	if ((r = kex->sign(server_host_private, server_host_public, &signature,
	     &slen, hash, hashlen, kex->hostkey_alg, ssh->compat)) < 0)
		goto out;

	/* destroy_sensitive_data(); */

	/* send server hostkey, DH pubkey 'f' and signed H */
	if ((r = FUNC30(ssh, SSH2_MSG_KEXDH_REPLY)) != 0 ||
	    (r = FUNC28(ssh, server_host_key_blob, sbloblen)) != 0 ||
	    (r = FUNC27(ssh, pub_key)) != 0 ||	/* f */
	    (r = FUNC28(ssh, signature, slen)) != 0 ||
	    (r = FUNC29(ssh)) != 0)
		goto out;

	if ((r = FUNC16(ssh, hash, hashlen, shared_secret)) == 0)
		r = FUNC18(ssh);
 out:
	FUNC13(hash, sizeof(hash));
	FUNC6(kex->dh);
	kex->dh = NULL;
	FUNC1(dh_client_pub);
	if (kbuf) {
		FUNC13(kbuf, klen);
		FUNC15(kbuf);
	}
	FUNC1(shared_secret);
	FUNC15(server_host_key_blob);
	FUNC15(signature);
	return r;
}