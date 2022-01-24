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
struct fpu_kern_ctx {int dummy; } ;
struct cryptop {int /*<<< orphan*/  crp_buf; int /*<<< orphan*/  crp_flags; struct cryptodesc* crp_desc; } ;
struct cryptodesc {scalar_t__ crd_flags; int /*<<< orphan*/  crd_inject; int /*<<< orphan*/  crd_len; int /*<<< orphan*/  crd_skip; } ;
struct blake2_session {int algo; size_t mlen; int /*<<< orphan*/  klen; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  blake2s_state ;
typedef  int /*<<< orphan*/  blake2b_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct fpu_kern_ctx*) ; 
 int BLAKE2B_OUTBYTES ; 
 size_t BLAKE2S_OUTBYTES ; 
#define  CRYPTO_BLAKE2B 129 
#define  CRYPTO_BLAKE2S 128 
 int EINVAL ; 
 int FPU_KERN_KTHR ; 
 int FPU_KERN_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (int,struct fpu_kern_ctx*) ; 
 int /*<<< orphan*/  blake2b_applicator ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blake2s_applicator ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC7 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,void*) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct fpu_kern_ctx*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct fpu_kern_ctx*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static int
FUNC14(struct blake2_session *ses, struct cryptop *crp)
{
	union {
		blake2b_state sb;
		blake2s_state ss;
	} bctx;
	char res[BLAKE2B_OUTBYTES];
	struct fpu_kern_ctx *ctx;
	int ctxidx;
	bool kt;
	struct cryptodesc *crd;
	int error, rc;
	size_t hashlen;

	crd = crp->crp_desc;
	ctx = NULL;
	ctxidx = 0;
	error = EINVAL;

	kt = FUNC12(0);
	if (!kt) {
		FUNC0(ctxidx, ctx);
		FUNC10(curthread, ctx,
		    FPU_KERN_NORMAL | FPU_KERN_KTHR);
	}

	if (crd->crd_flags != 0)
		goto out;

	switch (ses->algo) {
	case CRYPTO_BLAKE2B:
		if (ses->mlen != 0)
			hashlen = ses->mlen;
		else
			hashlen = BLAKE2B_OUTBYTES;
		if (ses->klen > 0)
			rc = FUNC4(&bctx.sb, hashlen, ses->key, ses->klen);
		else
			rc = FUNC3(&bctx.sb, hashlen);
		if (rc != 0)
			goto out;
		error = FUNC8(crp->crp_flags, crp->crp_buf, crd->crd_skip,
		    crd->crd_len, blake2b_applicator, &bctx.sb);
		if (error != 0)
			goto out;
		rc = FUNC2(&bctx.sb, res, hashlen);
		if (rc != 0) {
			error = EINVAL;
			goto out;
		}
		break;
	case CRYPTO_BLAKE2S:
		if (ses->mlen != 0)
			hashlen = ses->mlen;
		else
			hashlen = BLAKE2S_OUTBYTES;
		if (ses->klen > 0)
			rc = FUNC7(&bctx.ss, hashlen, ses->key, ses->klen);
		else
			rc = FUNC6(&bctx.ss, hashlen);
		if (rc != 0)
			goto out;
		error = FUNC8(crp->crp_flags, crp->crp_buf, crd->crd_skip,
		    crd->crd_len, blake2s_applicator, &bctx.ss);
		if (error != 0)
			goto out;
		rc = FUNC5(&bctx.ss, res, hashlen);
		if (rc != 0) {
			error = EINVAL;
			goto out;
		}
		break;
	default:
		FUNC13("unreachable");
	}

	FUNC9(crp->crp_flags, crp->crp_buf, crd->crd_inject, hashlen,
	    (void *)res);

out:
	if (!kt) {
		FUNC11(curthread, ctx);
		FUNC1(ctxidx, ctx);
	}
	return (error);
}