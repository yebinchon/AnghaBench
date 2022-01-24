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
struct fpu_cc_ent {int /*<<< orphan*/ * ctx; } ;

/* Variables and functions */
 int FPU_KERN_NORMAL ; 
 int FPU_KERN_NOWAIT ; 
 struct fpu_cc_ent* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct fpu_cc_ent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fpu_cc_ent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  fpu_busy_head ; 
 int /*<<< orphan*/  fpu_busy_mtx ; 
 int /*<<< orphan*/  fpu_free_head ; 
 int /*<<< orphan*/  fpu_free_mtx ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct fpu_cc_ent*,int /*<<< orphan*/ ) ; 
 struct fpu_cc_ent* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct fpu_cc_ent *
FUNC8(void)
{
	struct fpu_cc_ent *ent;

	FUNC6(&fpu_free_mtx);
	if ((ent = FUNC0(&fpu_free_head)) != NULL) {
		FUNC2(ent, entries);
		FUNC7(&fpu_free_mtx);
		FUNC6(&fpu_busy_mtx);
		FUNC1(&fpu_busy_head, ent, entries);
		FUNC7(&fpu_busy_mtx);
		return (ent);
	}
	FUNC7(&fpu_free_mtx);

	if ((ent = FUNC5(sizeof(struct fpu_cc_ent), M_DEVBUF, M_NOWAIT |
	    M_ZERO)) != NULL) {
		ent->ctx = FUNC3(FPU_KERN_NORMAL |
		    FPU_KERN_NOWAIT);
		if (ent->ctx != NULL) {
			FUNC6(&fpu_busy_mtx);
			FUNC1(&fpu_busy_head, ent, entries);
			FUNC7(&fpu_busy_mtx);
		} else {
			FUNC4(ent, M_DEVBUF);
			ent = NULL;
		}
	}

	return (ent);
}