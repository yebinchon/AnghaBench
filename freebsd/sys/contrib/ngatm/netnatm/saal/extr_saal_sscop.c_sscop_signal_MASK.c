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
typedef  size_t u_int ;
struct sscop_sig {size_t sig; struct sscop_msg* msg; } ;
struct sscop_msg {int dummy; } ;
struct sscop {size_t state; scalar_t__ in_sig; int /*<<< orphan*/  sigs; int /*<<< orphan*/  aarg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sscop_sig*) ; 
 int /*<<< orphan*/  FUNC2 (struct sscop_sig*) ; 
 int /*<<< orphan*/  SSCOP_DBG_INSIG ; 
 int /*<<< orphan*/  FUNC3 (struct sscop_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct sscop*,int /*<<< orphan*/ ,struct sscop*) ; 
 int /*<<< orphan*/ * events ; 
 int /*<<< orphan*/  FUNC5 (struct sscop*) ; 
 int /*<<< orphan*/ * states ; 

__attribute__((used)) static void
FUNC6(struct sscop *sscop, u_int sig, struct sscop_msg *msg)
{
	struct sscop_sig *s;

	FUNC4(sscop, SSCOP_DBG_INSIG, (sscop, sscop->aarg,
	    "got signal %s in state %s%s", events[sig],
	    states[sscop->state], sscop->in_sig ? " -- queuing" : ""));

	FUNC2(s);
	if(s == NULL) {
		FUNC0("sscop: cannot allocate signal");
		FUNC3(msg);
		return;
	}
	s->sig = sig;
	s->msg = msg;
	FUNC1(&sscop->sigs, s);

	if(!sscop->in_sig)
		FUNC5(sscop);
}