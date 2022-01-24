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
struct kex {int kex_type; int we_need; int /*<<< orphan*/ * dh; } ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  KEX_DH_GRP14_SHA1 132 
#define  KEX_DH_GRP14_SHA256 131 
#define  KEX_DH_GRP16_SHA512 130 
#define  KEX_DH_GRP18_SHA512 129 
#define  KEX_DH_GRP1_SHA1 128 
 int /*<<< orphan*/  SSH2_MSG_KEXDH_INIT ; 
 int /*<<< orphan*/  SSH2_MSG_KEXDH_REPLY ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  input_kex_dh ; 
 int /*<<< orphan*/  FUNC10 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct ssh*,int /*<<< orphan*/  const*) ; 
 int FUNC12 (struct ssh*) ; 
 int FUNC13 (struct ssh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC14(struct ssh *ssh)
{
	struct kex *kex = ssh->kex;
	int r;
	const BIGNUM *pub_key;

	/* generate and send 'e', client DH public key */
	switch (kex->kex_type) {
	case KEX_DH_GRP1_SHA1:
		kex->dh = FUNC5();
		break;
	case KEX_DH_GRP14_SHA1:
	case KEX_DH_GRP14_SHA256:
		kex->dh = FUNC6();
		break;
	case KEX_DH_GRP16_SHA512:
		kex->dh = FUNC7();
		break;
	case KEX_DH_GRP18_SHA512:
		kex->dh = FUNC8();
		break;
	default:
		r = SSH_ERR_INVALID_ARGUMENT;
		goto out;
	}
	if (kex->dh == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	FUNC3("sending SSH2_MSG_KEXDH_INIT");
	if ((r = FUNC4(kex->dh, kex->we_need * 8)) != 0)
		goto out;
	FUNC1(kex->dh, &pub_key, NULL);
	if ((r = FUNC13(ssh, SSH2_MSG_KEXDH_INIT)) != 0 ||
	    (r = FUNC11(ssh, pub_key)) != 0 ||
	    (r = FUNC12(ssh)) != 0)
		goto out;
#ifdef DEBUG_KEXDH
	DHparams_print_fp(stderr, kex->dh);
	fprintf(stderr, "pub= ");
	BN_print_fp(stderr, pub_key);
	fprintf(stderr, "\n");
#endif
	FUNC3("expecting SSH2_MSG_KEXDH_REPLY");
	FUNC10(ssh, SSH2_MSG_KEXDH_REPLY, &input_kex_dh);
	r = 0;
 out:
	return r;
}