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
struct uni {int working; int /*<<< orphan*/  workq; } ;
struct sig {int type; int /*<<< orphan*/  u; int /*<<< orphan*/  msg; int /*<<< orphan*/  cookie; int /*<<< orphan*/  sig; int /*<<< orphan*/  party; int /*<<< orphan*/  call; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
#define  SIG_CALL 132 
#define  SIG_COORD 131 
 int /*<<< orphan*/  FUNC1 (struct sig*) ; 
#define  SIG_PARTY 130 
#define  SIG_RESET_RESP 129 
#define  SIG_RESET_START 128 
 struct sig* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sig*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uni*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct uni*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct uni*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(struct uni *uni)
{
	struct sig *s;

	if (uni->working)
		return;
	uni->working = 1;

	while ((s = FUNC2(&uni->workq)) != NULL) {
		FUNC3(&uni->workq, s, link);
		switch (s->type) {

		  case SIG_COORD:
			FUNC5(uni, s->sig, s->cookie, s->msg);
			break;

		  case SIG_RESET_START:
			FUNC8(uni, s->sig, s->cookie, s->msg, s->u);
			break;

		  case SIG_RESET_RESP:
			FUNC7(uni, s->sig, s->cookie, s->msg, s->u);
			break;

		  case SIG_CALL:
			FUNC4(s->call, s->sig, s->cookie, s->msg, s->u);
			break;

		  case SIG_PARTY:
			FUNC6(s->party, s->sig, s->cookie, s->msg, s->u);
			break;

		  default:
			FUNC0(0, ("bad signal type"));
		}
		FUNC1(s);
	}

	uni->working = 0;
}