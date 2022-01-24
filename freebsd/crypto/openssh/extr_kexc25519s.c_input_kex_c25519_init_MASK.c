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
struct sshbuf {int dummy; } ;
struct ssh {int /*<<< orphan*/  compat; struct kex* kex; } ;
struct kex {size_t session_id_len; int (* sign ) (struct sshkey*,struct sshkey*,int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  hostkey_alg; int /*<<< orphan*/ * session_id; struct sshbuf* my; struct sshbuf* peer; int /*<<< orphan*/  server_version_string; int /*<<< orphan*/  client_version_string; int /*<<< orphan*/  hash_alg; int /*<<< orphan*/  hostkey_nid; int /*<<< orphan*/  hostkey_type; struct sshkey* (* load_host_private_key ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ssh*) ;struct sshkey* (* load_host_public_key ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ssh*) ;} ;
typedef  int /*<<< orphan*/  server_pubkey ;
typedef  int /*<<< orphan*/  server_key ;
typedef  int /*<<< orphan*/  hash ;

/* Variables and functions */
 int CURVE25519_SIZE ; 
 int /*<<< orphan*/  SSH2_MSG_KEX_ECDH_REPLY ; 
 int SSH_DIGEST_MAX_LENGTH ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int SSH_ERR_NO_HOSTKEY_LOADED ; 
 int SSH_ERR_SIGNATURE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC4 (struct ssh*,int /*<<< orphan*/ *,size_t,struct sshbuf*) ; 
 int FUNC5 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sshbuf*) ; 
 int /*<<< orphan*/ * FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct sshbuf*) ; 
 struct sshbuf* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct sshbuf*) ; 
 int FUNC14 (struct sshkey*,int /*<<< orphan*/ **,size_t*) ; 
 int FUNC15 (struct ssh*) ; 
 int FUNC16 (struct ssh*,int /*<<< orphan*/ **,size_t*) ; 
 int FUNC17 (struct ssh*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC18 (struct ssh*) ; 
 int FUNC19 (struct ssh*,int /*<<< orphan*/ ) ; 
 struct sshkey* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ssh*) ; 
 struct sshkey* FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ssh*) ; 
 int FUNC22 (struct sshkey*,struct sshkey*,int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC23(int type, u_int32_t seq, struct ssh *ssh)
{
	struct kex *kex = ssh->kex;
	struct sshkey *server_host_private, *server_host_public;
	struct sshbuf *shared_secret = NULL;
	u_char *server_host_key_blob = NULL, *signature = NULL;
	u_char server_key[CURVE25519_SIZE];
	u_char *client_pubkey = NULL;
	u_char server_pubkey[CURVE25519_SIZE];
	u_char hash[SSH_DIGEST_MAX_LENGTH];
	size_t slen, pklen, sbloblen, hashlen;
	int r;

	/* generate private key */
	FUNC6(server_key, server_pubkey);
#ifdef DEBUG_KEXECDH
	dump_digest("server private key:", server_key, sizeof(server_key));
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

	if ((r = FUNC16(ssh, &client_pubkey, &pklen)) != 0 ||
	    (r = FUNC15(ssh)) != 0)
		goto out;
	if (pklen != CURVE25519_SIZE) {
		r = SSH_ERR_SIGNATURE_INVALID;
		goto out;
	}
#ifdef DEBUG_KEXECDH
	dump_digest("client public key:", client_pubkey, CURVE25519_SIZE);
#endif

	if ((shared_secret = FUNC12()) == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	if ((r = FUNC7(server_key, client_pubkey,
	    shared_secret)) < 0)
		goto out;

	/* calc H */
	if ((r = FUNC14(server_host_public, &server_host_key_blob,
	    &sbloblen)) != 0)
		goto out;
	hashlen = sizeof(hash);
	if ((r = FUNC3(
	    kex->hash_alg,
	    kex->client_version_string,
	    kex->server_version_string,
	    FUNC13(kex->peer), FUNC11(kex->peer),
	    FUNC13(kex->my), FUNC11(kex->my),
	    server_host_key_blob, sbloblen,
	    client_pubkey,
	    server_pubkey,
	    FUNC13(shared_secret), FUNC11(shared_secret),
	    hash, &hashlen)) < 0)
		goto out;

	/* save session id := H */
	if (kex->session_id == NULL) {
		kex->session_id_len = hashlen;
		kex->session_id = FUNC8(kex->session_id_len);
		if (kex->session_id == NULL) {
			r = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		FUNC9(kex->session_id, hash, kex->session_id_len);
	}

	/* sign H */
	if ((r = kex->sign(server_host_private, server_host_public, &signature,
	     &slen, hash, hashlen, kex->hostkey_alg, ssh->compat)) < 0)
		goto out;

	/* send server hostkey, ECDH pubkey 'Q_S' and signed H */
	if ((r = FUNC19(ssh, SSH2_MSG_KEX_ECDH_REPLY)) != 0 ||
	    (r = FUNC17(ssh, server_host_key_blob, sbloblen)) != 0 ||
	    (r = FUNC17(ssh, server_pubkey, sizeof(server_pubkey))) != 0 ||
	    (r = FUNC17(ssh, signature, slen)) != 0 ||
	    (r = FUNC18(ssh)) != 0)
		goto out;

	if ((r = FUNC4(ssh, hash, hashlen, shared_secret)) == 0)
		r = FUNC5(ssh);
out:
	FUNC1(hash, sizeof(hash));
	FUNC1(server_key, sizeof(server_key));
	FUNC2(server_host_key_blob);
	FUNC2(signature);
	FUNC2(client_pubkey);
	FUNC10(shared_secret);
	return r;
}