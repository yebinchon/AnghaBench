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
struct kex {int (* verify_host_key ) (struct sshkey*,struct ssh*) ;scalar_t__ hostkey_type; scalar_t__ hostkey_nid; size_t session_id_len; int /*<<< orphan*/ * ec_client_key; int /*<<< orphan*/ * session_id; int /*<<< orphan*/  hostkey_alg; int /*<<< orphan*/  peer; int /*<<< orphan*/  my; int /*<<< orphan*/  server_version_string; int /*<<< orphan*/  client_version_string; int /*<<< orphan*/  hash_alg; int /*<<< orphan*/ * ec_group; } ;
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
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/  const*) ; 
 scalar_t__ KEY_ECDSA ; 
 int SSH_DIGEST_MAX_LENGTH ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int SSH_ERR_KEY_TYPE_MISMATCH ; 
 int SSH_ERR_LIBCRYPTO_ERROR ; 
 int SSH_ERR_MESSAGE_INCOMPLETE ; 
 int SSH_ERR_SIGNATURE_INVALID ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct ssh*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC15 (struct ssh*) ; 
 void* FUNC16 (size_t) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct sshkey*) ; 
 int FUNC23 (int /*<<< orphan*/ *,size_t,struct sshkey**) ; 
 int FUNC24 (struct sshkey*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct ssh*,char*) ; 
 int FUNC26 (struct ssh*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC27 (struct ssh*) ; 
 int FUNC28 (struct ssh*,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC29 (struct sshkey*,struct ssh*) ; 

__attribute__((used)) static int
FUNC30(int type, u_int32_t seq, struct ssh *ssh)
{
	struct kex *kex = ssh->kex;
	const EC_GROUP *group;
	EC_POINT *server_public = NULL;
	EC_KEY *client_key;
	BIGNUM *shared_secret = NULL;
	struct sshkey *server_host_key = NULL;
	u_char *server_host_key_blob = NULL, *signature = NULL;
	u_char *kbuf = NULL;
	u_char hash[SSH_DIGEST_MAX_LENGTH];
	size_t slen, sbloblen;
	size_t klen = 0, hashlen;
	int r;

	if (kex->verify_host_key == NULL) {
		r = SSH_ERR_INVALID_ARGUMENT;
		goto out;
	}
	group = kex->ec_group;
	client_key = kex->ec_client_key;

	/* hostkey */
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

	/* Q_S, server public key */
	/* signed H */
	if ((server_public = FUNC8(group)) == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	if ((r = FUNC26(ssh, server_public, group)) != 0 ||
	    (r = FUNC28(ssh, &signature, &slen)) != 0 ||
	    (r = FUNC27(ssh)) != 0)
		goto out;

#ifdef DEBUG_KEXECDH
	fputs("server public key:\n", stderr);
	sshkey_dump_ec_point(group, server_public);
#endif
	if (FUNC21(group, server_public) != 0) {
		FUNC25(ssh, "invalid server public key");
		r = SSH_ERR_MESSAGE_INCOMPLETE;
		goto out;
	}

	klen = (FUNC4(group) + 7) / 8;
	if ((kbuf = FUNC16(klen)) == NULL ||
	    (shared_secret = FUNC2()) == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	if (FUNC3(kbuf, klen, server_public,
	    client_key, NULL) != (int)klen ||
	    FUNC0(kbuf, klen, shared_secret) == NULL) {
		r = SSH_ERR_LIBCRYPTO_ERROR;
		goto out;
	}

#ifdef DEBUG_KEXECDH
	dump_digest("shared secret", kbuf, klen);
#endif
	/* calc and verify H */
	hashlen = sizeof(hash);
	if ((r = FUNC14(
	    kex->hash_alg,
	    group,
	    kex->client_version_string,
	    kex->server_version_string,
	    FUNC19(kex->my), FUNC18(kex->my),
	    FUNC19(kex->peer), FUNC18(kex->peer),
	    server_host_key_blob, sbloblen,
	    FUNC6(client_key),
	    server_public,
	    shared_secret,
	    hash, &hashlen)) != 0)
		goto out;

	if ((r = FUNC24(server_host_key, signature, slen, hash,
	    hashlen, kex->hostkey_alg, ssh->compat)) != 0)
		goto out;

	/* save session id */
	if (kex->session_id == NULL) {
		kex->session_id_len = hashlen;
		kex->session_id = FUNC16(kex->session_id_len);
		if (kex->session_id == NULL) {
			r = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		FUNC17(kex->session_id, hash, kex->session_id_len);
	}

	if ((r = FUNC13(ssh, hash, hashlen, shared_secret)) == 0)
		r = FUNC15(ssh);
 out:
	FUNC10(hash, sizeof(hash));
	FUNC5(kex->ec_client_key);
	kex->ec_client_key = NULL;
	FUNC7(server_public);
	if (kbuf) {
		FUNC10(kbuf, klen);
		FUNC12(kbuf);
	}
	FUNC1(shared_secret);
	FUNC22(server_host_key);
	FUNC12(server_host_key_blob);
	FUNC12(signature);
	return r;
}