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
union padlock_cw {int /*<<< orphan*/  cw_direction; scalar_t__ cw_filler3; scalar_t__ cw_filler2; scalar_t__ cw_filler1; scalar_t__ cw_filler0; } ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct thread {int dummy; } ;
struct padlock_session {int /*<<< orphan*/ * ses_iv; int /*<<< orphan*/  ses_fpu_ctx; int /*<<< orphan*/ * ses_dkey; int /*<<< orphan*/ * ses_ekey; union padlock_cw ses_cw; } ;
struct cryptop {int /*<<< orphan*/  crp_buf; int /*<<< orphan*/  crp_flags; } ;
struct cryptodesc {int crd_flags; int crd_len; scalar_t__ crd_skip; scalar_t__ crd_inject; int /*<<< orphan*/  crd_iv; int /*<<< orphan*/  crd_klen; int /*<<< orphan*/  crd_key; } ;

/* Variables and functions */
 int AES_BLOCK_LEN ; 
 int CRD_F_ENCRYPT ; 
 int CRD_F_IV_EXPLICIT ; 
 int CRD_F_IV_PRESENT ; 
 int CRD_F_KEY_EXPLICIT ; 
 int ENOMEM ; 
 int FPU_KERN_KTHR ; 
 int FPU_KERN_NORMAL ; 
 int /*<<< orphan*/  M_PADLOCK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PADLOCK_DIRECTION_DECRYPT ; 
 int /*<<< orphan*/  PADLOCK_DIRECTION_ENCRYPT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,union padlock_cw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (struct cryptodesc*,struct cryptop*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct padlock_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC11(struct padlock_session *ses, struct cryptodesc *enccrd,
    struct cryptop *crp)
{
	union padlock_cw *cw;
	struct thread *td;
	u_char *buf, *abuf;
	uint32_t *key;
	int allocated;

	buf = FUNC9(enccrd, crp, &allocated);
	if (buf == NULL)
		return (ENOMEM);
	/* Buffer has to be 16 bytes aligned. */
	abuf = FUNC0(buf);

	if ((enccrd->crd_flags & CRD_F_KEY_EXPLICIT) != 0) {
		FUNC10(ses, enccrd->crd_key,
		    enccrd->crd_klen);
	}

	cw = &ses->ses_cw;
	cw->cw_filler0 = 0;
	cw->cw_filler1 = 0;
	cw->cw_filler2 = 0;
	cw->cw_filler3 = 0;
	if ((enccrd->crd_flags & CRD_F_ENCRYPT) != 0) {
		cw->cw_direction = PADLOCK_DIRECTION_ENCRYPT;
		key = ses->ses_ekey;
		if ((enccrd->crd_flags & CRD_F_IV_EXPLICIT) != 0)
			FUNC1(enccrd->crd_iv, ses->ses_iv, AES_BLOCK_LEN);

		if ((enccrd->crd_flags & CRD_F_IV_PRESENT) == 0) {
			FUNC3(crp->crp_flags, crp->crp_buf,
			    enccrd->crd_inject, AES_BLOCK_LEN, ses->ses_iv);
		}
	} else {
		cw->cw_direction = PADLOCK_DIRECTION_DECRYPT;
		key = ses->ses_dkey;
		if ((enccrd->crd_flags & CRD_F_IV_EXPLICIT) != 0)
			FUNC1(enccrd->crd_iv, ses->ses_iv, AES_BLOCK_LEN);
		else {
			FUNC4(crp->crp_flags, crp->crp_buf,
			    enccrd->crd_inject, AES_BLOCK_LEN, ses->ses_iv);
		}
	}

	if (allocated) {
		FUNC4(crp->crp_flags, crp->crp_buf, enccrd->crd_skip,
		    enccrd->crd_len, abuf);
	}

	td = curthread;
	FUNC5(td, ses->ses_fpu_ctx, FPU_KERN_NORMAL | FPU_KERN_KTHR);
	FUNC8(abuf, abuf, enccrd->crd_len / AES_BLOCK_LEN, key, cw,
	    ses->ses_iv);
	FUNC6(td, ses->ses_fpu_ctx);

	if (allocated) {
		FUNC3(crp->crp_flags, crp->crp_buf, enccrd->crd_skip,
		    enccrd->crd_len, abuf);
	}

	/* copy out last block for use as next session IV */
	if ((enccrd->crd_flags & CRD_F_ENCRYPT) != 0) {
		FUNC4(crp->crp_flags, crp->crp_buf,
		    enccrd->crd_skip + enccrd->crd_len - AES_BLOCK_LEN,
		    AES_BLOCK_LEN, ses->ses_iv);
	}

	if (allocated) {
		FUNC2(buf, enccrd->crd_len + 16);
		FUNC7(buf, M_PADLOCK);
	}
	return (0);
}