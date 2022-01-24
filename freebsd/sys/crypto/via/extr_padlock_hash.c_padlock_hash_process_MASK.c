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
struct thread {int dummy; } ;
struct padlock_session {int /*<<< orphan*/  ses_fpu_ctx; } ;
struct cryptop {int /*<<< orphan*/  crp_flags; int /*<<< orphan*/  crp_buf; } ;
struct cryptodesc {int crd_flags; int /*<<< orphan*/  crd_klen; int /*<<< orphan*/  crd_key; } ;

/* Variables and functions */
 int CRD_F_KEY_EXPLICIT ; 
 int FPU_KERN_KTHR ; 
 int FPU_KERN_NORMAL ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct padlock_session*,struct cryptodesc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct padlock_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(struct padlock_session *ses, struct cryptodesc *maccrd,
    struct cryptop *crp)
{
	struct thread *td;
	int error;

	td = curthread;
	FUNC0(td, ses->ses_fpu_ctx, FPU_KERN_NORMAL | FPU_KERN_KTHR);
	if ((maccrd->crd_flags & CRD_F_KEY_EXPLICIT) != 0)
		FUNC3(ses, maccrd->crd_key, maccrd->crd_klen);

	error = FUNC2(ses, maccrd, crp->crp_buf, crp->crp_flags);
	FUNC1(td, ses->ses_fpu_ctx);
	return (error);
}