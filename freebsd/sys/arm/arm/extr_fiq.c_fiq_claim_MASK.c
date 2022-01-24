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
typedef  int /*<<< orphan*/  u_int ;
struct fiqhandler {int fh_size; int fh_flags; int /*<<< orphan*/  fh_func; int /*<<< orphan*/ * fh_regs; } ;

/* Variables and functions */
 int EBUSY ; 
 int EFBIG ; 
 int FH_CANPUSH ; 
 int /*<<< orphan*/  PSR_F ; 
 struct fiqhandler* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct fiqhandler*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fh_list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fiqhandler_stack ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(struct fiqhandler *fh)
{
	struct fiqhandler *ofh;
	u_int oldirqstate;
	int error = 0;

	if (fh->fh_size > 0x100)
		return (EFBIG);

	oldirqstate = FUNC2(PSR_F);

	if ((ofh = FUNC0(&fiqhandler_stack)) != NULL) {
		if ((ofh->fh_flags & FH_CANPUSH) == 0) {
			error = EBUSY;
			goto out;
		}

		/* Save the previous FIQ handler's registers. */
		if (ofh->fh_regs != NULL)
			FUNC3(ofh->fh_regs);
	}

	/* Set FIQ mode registers to ours. */
	if (fh->fh_regs != NULL)
		FUNC5(fh->fh_regs);

	FUNC1(&fiqhandler_stack, fh, fh_list);

	/* Now copy the actual handler into place. */
	FUNC4(fh->fh_func, fh->fh_size);

	/* Make sure FIQs are enabled when we return. */
	oldirqstate &= ~PSR_F;

 out:
	FUNC6(oldirqstate);
	return (error);
}