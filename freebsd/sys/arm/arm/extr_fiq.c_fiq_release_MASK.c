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
struct fiqhandler {int /*<<< orphan*/  fh_size; int /*<<< orphan*/  fh_func; int /*<<< orphan*/ * fh_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  PSR_F ; 
 struct fiqhandler* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct fiqhandler*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fh_list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fiq_nullhandler_code ; 
 int /*<<< orphan*/  fiq_nullhandler_size ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fiqhandler_stack ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(struct fiqhandler *fh)
{
	u_int oldirqstate;
	struct fiqhandler *ofh;

	oldirqstate = FUNC2(PSR_F);

	/*
	 * If we are the currently active FIQ handler, then we
	 * need to save our registers and pop the next one back
	 * into the vector.
	 */
	if (fh == FUNC0(&fiqhandler_stack)) {
		if (fh->fh_regs != NULL)
			FUNC3(fh->fh_regs);
		FUNC1(&fiqhandler_stack, fh, fh_list);
		if ((ofh = FUNC0(&fiqhandler_stack)) != NULL) {
			if (ofh->fh_regs != NULL)
				FUNC5(ofh->fh_regs);
			FUNC4(ofh->fh_func, ofh->fh_size);
		}
	} else
		FUNC1(&fiqhandler_stack, fh, fh_list);

	if (FUNC0(&fiqhandler_stack) == NULL) {
		/* Copy the NULL handler back down into the vector. */
		FUNC4(fiq_nullhandler_code, fiq_nullhandler_size);

		/* Make sure FIQs are disabled when we return. */
		oldirqstate |= PSR_F;
	}

	FUNC6(oldirqstate);
}