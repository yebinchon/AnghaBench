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
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  EditLine ;

/* Variables and functions */
 int /*<<< orphan*/  SIGWINCH ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int*,int*) ; 

void
FUNC5(EditLine *el)
{
	int lins, cols;
	sigset_t oset, nset;

	(void) FUNC1(&nset);
	(void) FUNC0(&nset, SIGWINCH);
	(void) FUNC2(SIG_BLOCK, &nset, &oset);

	/* get the correct window size */
	if (FUNC4(el, &lins, &cols))
		FUNC3(el, lins, cols);

	(void) FUNC2(SIG_SETMASK, &oset, NULL);
}