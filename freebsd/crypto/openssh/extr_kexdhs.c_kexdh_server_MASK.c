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

/* Variables and functions */
#define  KEX_DH_GRP14_SHA1 132 
#define  KEX_DH_GRP14_SHA256 131 
#define  KEX_DH_GRP16_SHA512 130 
#define  KEX_DH_GRP18_SHA512 129 
#define  KEX_DH_GRP1_SHA1 128 
 int /*<<< orphan*/  SSH2_MSG_KEXDH_INIT ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  input_kex_dh_init ; 
 int /*<<< orphan*/  FUNC6 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC7(struct ssh *ssh)
{
	struct kex *kex = ssh->kex;
	int r;

	/* generate server DH public key */
	switch (kex->kex_type) {
	case KEX_DH_GRP1_SHA1:
		kex->dh = FUNC2();
		break;
	case KEX_DH_GRP14_SHA1:
	case KEX_DH_GRP14_SHA256:
		kex->dh = FUNC3();
		break;
	case KEX_DH_GRP16_SHA512:
		kex->dh = FUNC4();
		break;
	case KEX_DH_GRP18_SHA512:
		kex->dh = FUNC5();
		break;
	default:
		r = SSH_ERR_INVALID_ARGUMENT;
		goto out;
	}
	if (kex->dh == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	if ((r = FUNC1(kex->dh, kex->we_need * 8)) != 0)
		goto out;

	FUNC0("expecting SSH2_MSG_KEXDH_INIT");
	FUNC6(ssh, SSH2_MSG_KEXDH_INIT, &input_kex_dh_init);
	r = 0;
 out:
	return r;
}