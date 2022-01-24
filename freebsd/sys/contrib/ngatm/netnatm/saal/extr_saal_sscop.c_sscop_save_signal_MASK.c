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
struct sscop_sig {struct sscop_msg* msg; int /*<<< orphan*/  sig; } ;
struct sscop_msg {int dummy; } ;
struct sscop {int /*<<< orphan*/  saved_sigs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sscop_sig*) ; 
 int /*<<< orphan*/  FUNC2 (struct sscop_sig*) ; 
 int /*<<< orphan*/  FUNC3 (struct sscop_msg*) ; 

__attribute__((used)) static void
FUNC4(struct sscop *sscop, u_int sig, struct sscop_msg *msg)
{
	struct sscop_sig *s;

	FUNC2(s);
	if(s == NULL) {
		FUNC0("sscop: cannot allocate signal");
		FUNC3(msg);
		return;
	}
	s->sig = sig;
	s->msg = msg;
	FUNC1(&sscop->saved_sigs, s);
}