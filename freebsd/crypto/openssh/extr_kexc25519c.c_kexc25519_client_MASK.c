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
struct kex {int /*<<< orphan*/  c25519_client_pubkey; int /*<<< orphan*/  c25519_client_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSH2_MSG_KEX_ECDH_INIT ; 
 int /*<<< orphan*/  SSH2_MSG_KEX_ECDH_REPLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  input_kex_c25519_reply ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ssh*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct ssh*) ; 
 int FUNC6 (struct ssh*,int /*<<< orphan*/ ) ; 

int
FUNC7(struct ssh *ssh)
{
	struct kex *kex = ssh->kex;
	int r;

	FUNC2(kex->c25519_client_key, kex->c25519_client_pubkey);
#ifdef DEBUG_KEXECDH
	dump_digest("client private key:", kex->c25519_client_key,
	    sizeof(kex->c25519_client_key));
#endif
	if ((r = FUNC6(ssh, SSH2_MSG_KEX_ECDH_INIT)) != 0 ||
	    (r = FUNC4(ssh, kex->c25519_client_pubkey,
	    sizeof(kex->c25519_client_pubkey))) != 0 ||
	    (r = FUNC5(ssh)) != 0)
		return r;

	FUNC0("expecting SSH2_MSG_KEX_ECDH_REPLY");
	FUNC3(ssh, SSH2_MSG_KEX_ECDH_REPLY, &input_kex_c25519_reply);
	return 0;
}