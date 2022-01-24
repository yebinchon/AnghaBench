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
struct ccsig {scalar_t__ type; int /*<<< orphan*/  arg1; scalar_t__ has_msg; int /*<<< orphan*/  arg2; int /*<<< orphan*/  sig; int /*<<< orphan*/  target; } ;
struct ccdata {int /*<<< orphan*/  free_sigs; int /*<<< orphan*/  sigs; } ;

/* Variables and functions */
 scalar_t__ SIG_USER ; 
 struct ccsig* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ccsig*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ccsig*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ccdata*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(struct ccdata *cc)
{
	struct ccsig *s;

	FUNC4(cc, "start %s", "work");
	while ((s = FUNC0(&cc->sigs)) != NULL) {
		FUNC2(&cc->sigs, s, link);
		if (s->type == SIG_USER)
			FUNC5(s->target, s->sig, s->arg1, s->arg2);
		else {
			FUNC3(s->target, s->sig, s->arg1, s->arg2);
			if (s->has_msg)
				FUNC6(s->arg1);
		}
		FUNC1(&cc->free_sigs, s, link);
	}
	FUNC4(cc, "end %s", "work");
}