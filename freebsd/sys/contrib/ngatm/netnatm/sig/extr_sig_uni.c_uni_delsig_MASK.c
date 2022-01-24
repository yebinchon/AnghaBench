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
typedef  scalar_t__ u_int ;
struct uni {int /*<<< orphan*/  delq; int /*<<< orphan*/  workq; } ;
struct sig {scalar_t__ type; scalar_t__ u; scalar_t__ msg; struct party* party; struct call* call; } ;
struct party {int dummy; } ;
struct call {int dummy; } ;

/* Variables and functions */
 scalar_t__ SIG_CALL ; 
 int /*<<< orphan*/  FUNC0 (struct sig*) ; 
 scalar_t__ SIG_PARTY ; 
 struct sig* FUNC1 (int /*<<< orphan*/ *) ; 
 struct sig* FUNC2 (struct sig*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sig*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

void
FUNC6(struct uni *uni, u_int type, struct call *c, struct party *p)
{
	struct sig *s, *s1;

	s = FUNC1(&uni->workq);
	while (s != NULL) {
		s1 = FUNC2(s, link);
		if ((type == SIG_CALL && s->type == SIG_CALL &&
		    s->call == c) ||
		    (type == SIG_PARTY && s->type == SIG_PARTY &&
		    s->call == c && s->party == p)) {
			FUNC3(&uni->workq, s, link);
			if (s->msg)
				FUNC5(s->msg);
			if (s->u)
				FUNC4(s->u);
			FUNC0(s);
		}
		s = s1;
	}

	s = FUNC1(&uni->delq);
	while (s != NULL) {
		s1 = FUNC2(s, link);
		if ((type == SIG_CALL && s->type == SIG_CALL &&
		    s->call == c) ||
		    (type == SIG_PARTY && s->type == SIG_PARTY &&
		    s->call == c && s->party == p)) {
			FUNC3(&uni->delq, s, link);
			if (s->msg)
				FUNC5(s->msg);
			if (s->u)
				FUNC4(s->u);
			FUNC0(s);						\
		}
		s = s1;
	}
}