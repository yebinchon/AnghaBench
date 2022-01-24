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
typedef  void* u_int ;
struct ssh {struct kex* kex; } ;
struct kex {scalar_t__ nbits; scalar_t__ min; scalar_t__ max; int we_need; int /*<<< orphan*/ * dh; } ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  DH_GRP_MAX ; 
 scalar_t__ DH_GRP_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 void* FUNC1 (scalar_t__,void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSH2_MSG_KEX_DH_GEX_GROUP ; 
 int /*<<< orphan*/  SSH2_MSG_KEX_DH_GEX_INIT ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_DH_GEX_OUT_OF_RANGE ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  input_kex_dh_gex_init ; 
 int /*<<< orphan*/  FUNC7 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ssh*,char*) ; 
 int FUNC9 (struct ssh*) ; 
 int FUNC10 (struct ssh*,void**) ; 
 int FUNC11 (struct ssh*,int /*<<< orphan*/  const*) ; 
 int FUNC12 (struct ssh*) ; 
 int FUNC13 (struct ssh*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(int type, u_int32_t seq, struct ssh *ssh)
{
	struct kex *kex = ssh->kex;
	int r;
	u_int min = 0, max = 0, nbits = 0;
	const BIGNUM *dh_p, *dh_g;

	FUNC5("SSH2_MSG_KEX_DH_GEX_REQUEST received");
	if ((r = FUNC10(ssh, &min)) != 0 ||
	    (r = FUNC10(ssh, &nbits)) != 0 ||
	    (r = FUNC10(ssh, &max)) != 0 ||
	    (r = FUNC9(ssh)) != 0)
		goto out;
	kex->nbits = nbits;
	kex->min = min;
	kex->max = max;
	min = FUNC1(DH_GRP_MIN, min);
	max = FUNC2(DH_GRP_MAX, max);
	nbits = FUNC1(DH_GRP_MIN, nbits);
	nbits = FUNC2(DH_GRP_MAX, nbits);

	if (kex->max < kex->min || kex->nbits < kex->min ||
	    kex->max < kex->nbits || kex->max < DH_GRP_MIN) {
		r = SSH_ERR_DH_GEX_OUT_OF_RANGE;
		goto out;
	}

	/* Contact privileged parent */
	kex->dh = FUNC3(FUNC4(min, nbits, max));
	if (kex->dh == NULL) {
		FUNC8(ssh, "no matching DH grp found");
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	FUNC5("SSH2_MSG_KEX_DH_GEX_GROUP sent");
	FUNC0(kex->dh, &dh_p, NULL, &dh_g);
	if ((r = FUNC13(ssh, SSH2_MSG_KEX_DH_GEX_GROUP)) != 0 ||
	    (r = FUNC11(ssh, dh_p)) != 0 ||
	    (r = FUNC11(ssh, dh_g)) != 0 ||
	    (r = FUNC12(ssh)) != 0)
		goto out;

	/* Compute our exchange value in parallel with the client */
	if ((r = FUNC6(kex->dh, kex->we_need * 8)) != 0)
		goto out;

	FUNC5("expecting SSH2_MSG_KEX_DH_GEX_INIT");
	FUNC7(ssh, SSH2_MSG_KEX_DH_GEX_INIT, &input_kex_dh_gex_init);
	r = 0;
 out:
	return r;
}