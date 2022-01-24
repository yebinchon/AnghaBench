#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct sscop_msg {int dummy; } ;
struct sscop {size_t state; int /*<<< orphan*/  aarg; } ;
struct TYPE_2__ {void (* func ) (struct sscop*,struct sscop_msg*) ;int (* cond ) (struct sscop*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SSCOP_DBG_BUG ; 
 int /*<<< orphan*/  SSCOP_DBG_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct sscop_msg*) ; 
 int /*<<< orphan*/  FUNC1 (struct sscop*,int /*<<< orphan*/ ,struct sscop*) ; 
 int /*<<< orphan*/ * events ; 
 TYPE_1__** state_matrix ; 
 int /*<<< orphan*/ * states ; 
 int FUNC2 (struct sscop*) ; 
 void FUNC3 (struct sscop*,struct sscop_msg*) ; 

__attribute__((used)) static int
FUNC4(struct sscop *sscop, u_int sig, struct sscop_msg *msg)
{
	void (*func)(struct sscop *, struct sscop_msg *);
	int (*cond)(struct sscop *);

	func = state_matrix[sscop->state][sig].func;
	cond = state_matrix[sscop->state][sig].cond;

	if(func == NULL) {
		FUNC1(sscop, SSCOP_DBG_BUG, (sscop, sscop->aarg,
		    "no handler for %s in state %s - ignored",
		    events[sig], states[sscop->state]));
		FUNC0(msg);
		return 1;
	}
	if(cond == NULL || (*cond)(sscop)) {
		FUNC1(sscop, SSCOP_DBG_EXEC, (sscop, sscop->aarg,
		    "executing %s in %s", events[sig],
		    states[sscop->state]));
		(*func)(sscop, msg);
		return 1;
	}
	FUNC1(sscop, SSCOP_DBG_EXEC, (sscop, sscop->aarg,
	    "delaying %s in %s", events[sig],
	    states[sscop->state]));

	return 0;
}