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
struct sshbuf {int dummy; } ;
struct ssh {int /*<<< orphan*/  compat; struct kex* kex; } ;
struct kex {int (* verify_host_key ) (struct sshkey*,struct ssh*) ;scalar_t__ hostkey_type; scalar_t__ hostkey_nid; size_t session_id_len; int /*<<< orphan*/ * c25519_client_key; int /*<<< orphan*/ * session_id; int /*<<< orphan*/  hostkey_alg; int /*<<< orphan*/  c25519_client_pubkey; struct sshbuf* peer; struct sshbuf* my; int /*<<< orphan*/  server_version_string; int /*<<< orphan*/  client_version_string; int /*<<< orphan*/  hash_alg; } ;
typedef  int /*<<< orphan*/  hash ;

/* Variables and functions */
 size_t CURVE25519_SIZE ; 
 scalar_t__ KEY_ECDSA ; 
 int SSH_DIGEST_MAX_LENGTH ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int SSH_ERR_KEY_TYPE_MISMATCH ; 
 int SSH_ERR_SIGNATURE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC4 (struct ssh*,int /*<<< orphan*/ *,size_t,struct sshbuf*) ; 
 int FUNC5 (struct ssh*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sshbuf*) ; 
 int /*<<< orphan*/ * FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct sshbuf*) ; 
 struct sshbuf* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC13 (struct sshkey*) ; 
 int FUNC14 (int /*<<< orphan*/ *,size_t,struct sshkey**) ; 
 int FUNC15 (struct sshkey*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct ssh*) ; 
 int FUNC17 (struct ssh*,int /*<<< orphan*/ **,size_t*) ; 
 int FUNC18 (struct sshkey*,struct ssh*) ; 

__attribute__((used)) static int
FUNC19(int type, u_int32_t seq, struct ssh *ssh)
{
	struct kex *kex = ssh->kex;
	struct sshkey *server_host_key = NULL;
	struct sshbuf *shared_secret = NULL;
	u_char *server_pubkey = NULL;
	u_char *server_host_key_blob = NULL, *signature = NULL;
	u_char hash[SSH_DIGEST_MAX_LENGTH];
	size_t slen, pklen, sbloblen, hashlen;
	int r;

	if (kex->verify_host_key == NULL) {
		r = SSH_ERR_INVALID_ARGUMENT;
		goto out;
	}

	/* hostkey */
	if ((r = FUNC17(ssh, &server_host_key_blob,
	    &sbloblen)) != 0 ||
	    (r = FUNC14(server_host_key_blob, sbloblen,
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

	/* Q_S, server public key */
	/* signed H */
	if ((r = FUNC17(ssh, &server_pubkey, &pklen)) != 0 ||
	    (r = FUNC17(ssh, &signature, &slen)) != 0 ||
	    (r = FUNC16(ssh)) != 0)
		goto out;
	if (pklen != CURVE25519_SIZE) {
		r = SSH_ERR_SIGNATURE_INVALID;
		goto out;
	}

#ifdef DEBUG_KEXECDH
	dump_digest("server public key:", server_pubkey, CURVE25519_SIZE);
#endif

	if ((shared_secret = FUNC11()) == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	if ((r = FUNC6(kex->c25519_client_key, server_pubkey,
	    shared_secret)) < 0)
		goto out;

	/* calc and verify H */
	hashlen = sizeof(hash);
	if ((r = FUNC3(
	    kex->hash_alg,
	    kex->client_version_string,
	    kex->server_version_string,
	    FUNC12(kex->my), FUNC10(kex->my),
	    FUNC12(kex->peer), FUNC10(kex->peer),
	    server_host_key_blob, sbloblen,
	    kex->c25519_client_pubkey,
	    server_pubkey,
	    FUNC12(shared_secret), FUNC10(shared_secret),
	    hash, &hashlen)) < 0)
		goto out;

	if ((r = FUNC15(server_host_key, signature, slen, hash, hashlen,
	    kex->hostkey_alg, ssh->compat)) != 0)
		goto out;

	/* save session id */
	if (kex->session_id == NULL) {
		kex->session_id_len = hashlen;
		kex->session_id = FUNC7(kex->session_id_len);
		if (kex->session_id == NULL) {
			r = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		FUNC8(kex->session_id, hash, kex->session_id_len);
	}

	if ((r = FUNC4(ssh, hash, hashlen, shared_secret)) == 0)
		r = FUNC5(ssh);
out:
	FUNC1(hash, sizeof(hash));
	FUNC1(kex->c25519_client_key, sizeof(kex->c25519_client_key));
	FUNC2(server_host_key_blob);
	FUNC2(server_pubkey);
	FUNC2(signature);
	FUNC13(server_host_key);
	FUNC9(shared_secret);
	return r;
}