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
struct sscop_sig {int /*<<< orphan*/  msg; int /*<<< orphan*/  sig; } ;
struct sscop {int /*<<< orphan*/  in_sig; int /*<<< orphan*/  sigs; } ;
typedef  int /*<<< orphan*/  sscop_sigq_head_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sscop_sig*) ; 
 struct sscop_sig* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sscop_sig*) ; 
 scalar_t__ FUNC6 (struct sscop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct sscop *sscop)
{
	struct sscop_sig *s;
	sscop_sigq_head_t dsigs, q;
	int exec;

	sscop->in_sig++;
 
	/*
	 * Copy the current signal queue to the local one and empty
	 * the signal queue. Then loop through the signals. After one
	 * pass we have a list of delayed signals because of entry
	 * conditions and a new list of signals. Merge them. Repeat until
	 * the signal queue is either empty or contains only delayed signals.
	 */
	FUNC2(&q);
	FUNC2(&dsigs);
	do {
		exec = 0;

		/*
		 * Copy signal list and make sscop list empty
		 */
		FUNC3(&sscop->sigs, &q);

		/*
		 * Loop through the list
		 */
		while((s = FUNC1(&q)) != NULL) {
			if(FUNC6(sscop, s->sig, s->msg)) {
				exec = 1;
				FUNC5(s);
			} else {
				FUNC0(&dsigs, s);
			}
		}

		/*
		 * Merge lists by inserting delayed signals in front of
		 * the signal list. preserving the order.
		 */
		FUNC4(&dsigs, &sscop->sigs);
	} while(exec);
	sscop->in_sig--;
}