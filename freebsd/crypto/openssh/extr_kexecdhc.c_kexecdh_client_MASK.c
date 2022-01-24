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
struct ssh {struct kex* kex; } ;
struct kex {int /*<<< orphan*/  const* ec_group; int /*<<< orphan*/ * ec_client_key; int /*<<< orphan*/  ec_nid; } ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSH2_MSG_KEX_ECDH_INIT ; 
 int /*<<< orphan*/  SSH2_MSG_KEX_ECDH_REPLY ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_LIBCRYPTO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  input_kex_ecdh_reply ; 
 int /*<<< orphan*/  FUNC7 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct ssh*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC10 (struct ssh*) ; 
 int FUNC11 (struct ssh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC12(struct ssh *ssh)
{
	struct kex *kex = ssh->kex;
	EC_KEY *client_key = NULL;
	const EC_GROUP *group;
	const EC_POINT *public_key;
	int r;

	if ((client_key = FUNC4(kex->ec_nid)) == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	if (FUNC1(client_key) != 1) {
		r = SSH_ERR_LIBCRYPTO_ERROR;
		goto out;
	}
	group = FUNC2(client_key);
	public_key = FUNC3(client_key);

	if ((r = FUNC11(ssh, SSH2_MSG_KEX_ECDH_INIT)) != 0 ||
	    (r = FUNC9(ssh, public_key, group)) != 0 ||
	    (r = FUNC10(ssh)) != 0)
		goto out;
	FUNC5("sending SSH2_MSG_KEX_ECDH_INIT");

#ifdef DEBUG_KEXECDH
	fputs("client private key:\n", stderr);
	sshkey_dump_ec_key(client_key);
#endif
	kex->ec_client_key = client_key;
	kex->ec_group = group;
	client_key = NULL;	/* owned by the kex */

	FUNC5("expecting SSH2_MSG_KEX_ECDH_REPLY");
	FUNC7(ssh, SSH2_MSG_KEX_ECDH_REPLY, &input_kex_ecdh_reply);
	r = 0;
 out:
	FUNC0(client_key);
	return r;
}