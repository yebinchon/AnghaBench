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
struct logpage_function {int dummy; } ;

/* Variables and functions */
 struct logpage_function* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct logpage_function*,struct logpage_function*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct logpage_function*,int /*<<< orphan*/ ) ; 
 struct logpage_function* FUNC3 (struct logpage_function*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 scalar_t__ FUNC4 (struct logpage_function*,struct logpage_function*) ; 
 int /*<<< orphan*/  logpages ; 

void
FUNC5(struct logpage_function *p)
{
	struct logpage_function *l, *a;

	a = NULL;
	l = FUNC0(&logpages);
	while (l != NULL) {
		if (FUNC4(l, p) > 0)
			break;
		a = l;
		l = FUNC3(l, link);
	}
	if (a == NULL)
		FUNC2(&logpages, p, link);
	else
		FUNC1(a, p, link);
}