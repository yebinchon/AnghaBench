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
typedef  int /*<<< orphan*/  uint8_t ;
struct fpu_kern_ctx {int dummy; } ;
struct cryptop {int /*<<< orphan*/  crp_buf; int /*<<< orphan*/  crp_flags; } ;
struct cryptodesc {int crd_flags; int crd_alg; int crd_len; int /*<<< orphan*/  crd_skip; int /*<<< orphan*/  crd_inject; int /*<<< orphan*/  crd_iv; } ;
struct armv8_crypto_session {int algo; int /*<<< orphan*/  dec_schedule; int /*<<< orphan*/  rounds; int /*<<< orphan*/  enc_schedule; } ;

/* Variables and functions */
 int AES_BLOCK_LEN ; 
 int /*<<< orphan*/  FUNC0 (int,struct fpu_kern_ctx*) ; 
 int CRD_F_ENCRYPT ; 
 int CRD_F_IV_EXPLICIT ; 
 int CRD_F_IV_PRESENT ; 
 int CRD_F_KEY_EXPLICIT ; 
#define  CRYPTO_AES_CBC 128 
 int ENOMEM ; 
 int FPU_KERN_KTHR ; 
 int FPU_KERN_NORMAL ; 
 int /*<<< orphan*/  M_ARMV8_CRYPTO ; 
 int /*<<< orphan*/  FUNC1 (int,struct fpu_kern_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (struct cryptodesc*,struct cryptop*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct fpu_kern_ctx*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct fpu_kern_ctx*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static int
FUNC15(struct armv8_crypto_session *ses,
    struct cryptodesc *enccrd, struct cryptop *crp)
{
	struct fpu_kern_ctx *ctx;
	uint8_t *buf;
	uint8_t iv[AES_BLOCK_LEN];
	int allocated, i;
	int encflag, ivlen;
	int kt;

	encflag = (enccrd->crd_flags & CRD_F_ENCRYPT) == CRD_F_ENCRYPT;

	buf = FUNC5(enccrd, crp, &allocated);
	if (buf == NULL)
		return (ENOMEM);

	kt = FUNC13(0);
	if (!kt) {
		FUNC0(i, ctx);
		FUNC10(curthread, ctx,
		    FPU_KERN_NORMAL | FPU_KERN_KTHR);
	}

	if ((enccrd->crd_flags & CRD_F_KEY_EXPLICIT) != 0) {
		FUNC14("CRD_F_KEY_EXPLICIT");
	}

	switch (enccrd->crd_alg) {
	case CRYPTO_AES_CBC:
		ivlen = AES_BLOCK_LEN;
		break;
	}

	/* Setup iv */
	if (encflag) {
		if ((enccrd->crd_flags & CRD_F_IV_EXPLICIT) != 0)
			FUNC6(enccrd->crd_iv, iv, ivlen);
		else
			FUNC2(iv, ivlen, 0);

		if ((enccrd->crd_flags & CRD_F_IV_PRESENT) == 0)
			FUNC8(crp->crp_flags, crp->crp_buf,
			    enccrd->crd_inject, ivlen, iv);
	} else {
		if ((enccrd->crd_flags & CRD_F_IV_EXPLICIT) != 0)
			FUNC6(enccrd->crd_iv, iv, ivlen);
		else
			FUNC9(crp->crp_flags, crp->crp_buf,
			    enccrd->crd_inject, ivlen, iv);
	}

	/* Do work */
	switch (ses->algo) {
	case CRYPTO_AES_CBC:
		if (encflag)
			FUNC4(ses->rounds, ses->enc_schedule,
			    enccrd->crd_len, buf, buf, iv);
		else
			FUNC3(ses->rounds, ses->dec_schedule,
			    enccrd->crd_len, buf, iv);
		break;
	}

	if (allocated)
		FUNC8(crp->crp_flags, crp->crp_buf, enccrd->crd_skip,
		    enccrd->crd_len, buf);

	if (!kt) {
		FUNC11(curthread, ctx);
		FUNC1(i, ctx);
	}
	if (allocated) {
		FUNC7(buf, enccrd->crd_len);
		FUNC12(buf, M_ARMV8_CRYPTO);
	}
	return (0);
}