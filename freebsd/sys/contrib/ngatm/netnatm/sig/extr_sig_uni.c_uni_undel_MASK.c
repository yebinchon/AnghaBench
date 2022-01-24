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
struct uni {int /*<<< orphan*/  workq; int /*<<< orphan*/  delq; } ;
struct sigqueue {int dummy; } ;
typedef  struct sig sig ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct sig* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sigqueue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sig*,int /*<<< orphan*/ ) ; 
 struct sig* FUNC4 (struct sig*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sig*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int FUNC6 (struct sig*,void*) ; 

void
FUNC7(struct uni *uni, int (*filter)(struct sig *, void *), void *arg)
{
	struct sigqueue		newq;
	struct sig *s, *s1;

	if (FUNC0(&uni->delq))
		return;

	FUNC2(&newq);

	s = FUNC1(&uni->delq);
	while (s != NULL) {
		s1 = FUNC4(s, link);
		if ((*filter)(s, arg)) {
			FUNC5(&uni->delq, s, link);
			FUNC3(&uni->workq, s, link);
		}
		s = s1;
	}
}