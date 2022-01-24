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
typedef  scalar_t__ u_int ;
struct ssh {struct kex* kex; } ;
struct kex {scalar_t__ min; scalar_t__ max; int we_need; int /*<<< orphan*/ * dh; } ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSH2_MSG_KEX_DH_GEX_GROUP ; 
 int /*<<< orphan*/  SSH2_MSG_KEX_DH_GEX_INIT ; 
 int /*<<< orphan*/  SSH2_MSG_KEX_DH_GEX_REPLY ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_DH_GEX_OUT_OF_RANGE ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  input_kex_dh_gex_reply ; 
 int /*<<< orphan*/  FUNC10 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct ssh*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct ssh*) ; 
 int FUNC13 (struct ssh*,int /*<<< orphan*/  const*) ; 
 int FUNC14 (struct ssh*) ; 
 int FUNC15 (struct ssh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC16(int type, u_int32_t seq, struct ssh *ssh)
{
	struct kex *kex = ssh->kex;
	BIGNUM *p = NULL, *g = NULL;
	const BIGNUM *pub_key;
	int r, bits;

	FUNC6("got SSH2_MSG_KEX_DH_GEX_GROUP");

	if ((p = FUNC1()) == NULL ||
	    (g = FUNC1()) == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	if ((r = FUNC11(ssh, p)) != 0 ||
	    (r = FUNC11(ssh, g)) != 0 ||
	    (r = FUNC12(ssh)) != 0)
		goto out;
	if ((bits = FUNC2(p)) < 0 ||
	    (u_int)bits < kex->min || (u_int)bits > kex->max) {
		r = SSH_ERR_DH_GEX_OUT_OF_RANGE;
		goto out;
	}
	if ((kex->dh = FUNC8(g, p)) == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	p = g = NULL; /* belong to kex->dh now */

	/* generate and send 'e', client DH public key */
	if ((r = FUNC7(kex->dh, kex->we_need * 8)) != 0)
		goto out;
	FUNC4(kex->dh, &pub_key, NULL);
	if ((r = FUNC15(ssh, SSH2_MSG_KEX_DH_GEX_INIT)) != 0 ||
	    (r = FUNC13(ssh, pub_key)) != 0 ||
	    (r = FUNC14(ssh)) != 0)
		goto out;
	FUNC6("SSH2_MSG_KEX_DH_GEX_INIT sent");
#ifdef DEBUG_KEXDH
	DHparams_print_fp(stderr, kex->dh);
	fprintf(stderr, "pub= ");
	BN_print_fp(stderr, pub_key);
	fprintf(stderr, "\n");
#endif
	FUNC10(ssh, SSH2_MSG_KEX_DH_GEX_GROUP, NULL);
	FUNC10(ssh, SSH2_MSG_KEX_DH_GEX_REPLY, &input_kex_dh_gex_reply);
	r = 0;
out:
	FUNC0(p);
	FUNC0(g);
	return r;
}