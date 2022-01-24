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
struct kex {size_t session_id_len; int (* sign ) (struct sshkey*,struct sshkey*,int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * ec_client_key; int /*<<< orphan*/  hostkey_alg; int /*<<< orphan*/ * session_id; int /*<<< orphan*/  my; int /*<<< orphan*/  peer; int /*<<< orphan*/  server_version_string; int /*<<< orphan*/  client_version_string; int /*<<< orphan*/  hash_alg; int /*<<< orphan*/  hostkey_nid; int /*<<< orphan*/  hostkey_type; struct sshkey* (* load_host_private_key ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ssh*) ;struct sshkey* (* load_host_public_key ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ssh*) ;int /*<<< orphan*/  ec_nid; } ;
typedef  int /*<<< orphan*/  hash ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  SSH2_MSG_KEX_ECDH_REPLY ; 
 int SSH_DIGEST_MAX_LENGTH ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int SSH_ERR_LIBCRYPTO_ERROR ; 
 int SSH_ERR_MESSAGE_INCOMPLETE ; 
 int SSH_ERR_NO_HOSTKEY_LOADED ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct ssh*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC17 (struct ssh*) ; 
 void* FUNC18 (size_t) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC25 (struct sshkey*,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC26 (struct ssh*,char*) ; 
 int FUNC27 (struct ssh*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC28 (struct ssh*) ; 
 int FUNC29 (struct ssh*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC30 (struct ssh*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC31 (struct ssh*) ; 
 int FUNC32 (struct ssh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 struct sshkey* FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ssh*) ; 
 struct sshkey* FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ssh*) ; 
 int FUNC35 (struct sshkey*,struct sshkey*,int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC36(int type, u_int32_t seq, struct ssh *ssh)
{
	struct kex *kex = ssh->kex;
	EC_POINT *client_public;
	EC_KEY *server_key = NULL;
	const EC_GROUP *group;
	const EC_POINT *public_key;
	BIGNUM *shared_secret = NULL;
	struct sshkey *server_host_private, *server_host_public;
	u_char *server_host_key_blob = NULL, *signature = NULL;
	u_char *kbuf = NULL;
	u_char hash[SSH_DIGEST_MAX_LENGTH];
	size_t slen, sbloblen;
	size_t klen = 0, hashlen;
	int r;

	if ((server_key = FUNC9(kex->ec_nid)) == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	if (FUNC6(server_key) != 1) {
		r = SSH_ERR_LIBCRYPTO_ERROR;
		goto out;
	}
	group = FUNC7(server_key);

#ifdef DEBUG_KEXECDH
	fputs("server private key:\n", stderr);
	sshkey_dump_ec_key(server_key);
#endif

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
	if ((client_public = FUNC10(group)) == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	if ((r = FUNC27(ssh, client_public, group)) != 0 ||
	    (r = FUNC28(ssh)) != 0)
		goto out;

#ifdef DEBUG_KEXECDH
	fputs("client public key:\n", stderr);
	sshkey_dump_ec_point(group, client_public);
#endif
	if (FUNC24(group, client_public) != 0) {
		FUNC26(ssh, "invalid client public key");
		r = SSH_ERR_MESSAGE_INCOMPLETE;
		goto out;
	}

	/* Calculate shared_secret */
	klen = (FUNC4(group) + 7) / 8;
	if ((kbuf = FUNC18(klen)) == NULL ||
	    (shared_secret = FUNC2()) == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	if (FUNC3(kbuf, klen, client_public,
	    server_key, NULL) != (int)klen ||
	    FUNC0(kbuf, klen, shared_secret) == NULL) {
		r = SSH_ERR_LIBCRYPTO_ERROR;
		goto out;
	}

#ifdef DEBUG_KEXECDH
	dump_digest("shared secret", kbuf, klen);
#endif
	/* calc H */
	if ((r = FUNC25(server_host_public, &server_host_key_blob,
	    &sbloblen)) != 0)
		goto out;
	hashlen = sizeof(hash);
	if ((r = FUNC16(
	    kex->hash_alg,
	    group,
	    kex->client_version_string,
	    kex->server_version_string,
	    FUNC21(kex->peer), FUNC20(kex->peer),
	    FUNC21(kex->my), FUNC20(kex->my),
	    server_host_key_blob, sbloblen,
	    client_public,
	    FUNC8(server_key),
	    shared_secret,
	    hash, &hashlen)) != 0)
		goto out;

	/* save session id := H */
	if (kex->session_id == NULL) {
		kex->session_id_len = hashlen;
		kex->session_id = FUNC18(kex->session_id_len);
		if (kex->session_id == NULL) {
			r = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		FUNC19(kex->session_id, hash, kex->session_id_len);
	}

	/* sign H */
	if ((r = kex->sign(server_host_private, server_host_public, &signature,
	     &slen, hash, hashlen, kex->hostkey_alg, ssh->compat)) < 0)
		goto out;

	/* destroy_sensitive_data(); */

	public_key = FUNC8(server_key);
	/* send server hostkey, ECDH pubkey 'Q_S' and signed H */
	if ((r = FUNC32(ssh, SSH2_MSG_KEX_ECDH_REPLY)) != 0 ||
	    (r = FUNC30(ssh, server_host_key_blob, sbloblen)) != 0 ||
	    (r = FUNC29(ssh, public_key, group)) != 0 ||
	    (r = FUNC30(ssh, signature, slen)) != 0 ||
	    (r = FUNC31(ssh)) != 0)
		goto out;

	if ((r = FUNC15(ssh, hash, hashlen, shared_secret)) == 0)
		r = FUNC17(ssh);
 out:
	FUNC12(hash, sizeof(hash));
	FUNC5(kex->ec_client_key);
	kex->ec_client_key = NULL;
	FUNC5(server_key);
	if (kbuf) {
		FUNC12(kbuf, klen);
		FUNC14(kbuf);
	}
	FUNC1(shared_secret);
	FUNC14(server_host_key_blob);
	FUNC14(signature);
	return r;
}