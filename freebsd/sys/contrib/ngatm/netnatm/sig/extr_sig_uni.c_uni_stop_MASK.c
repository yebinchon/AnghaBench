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
struct uni {int /*<<< orphan*/  delq; int /*<<< orphan*/  workq; int /*<<< orphan*/  calls; } ;
struct call {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct call* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC3 (struct call*,int) ; 

__attribute__((used)) static void
FUNC4(struct uni *uni)
{
	struct call *c;

	while ((c = FUNC1(&uni->calls)) != NULL) {
		FUNC2(&uni->calls, c, link);
		FUNC3(c, 1);
	}

	FUNC0(&uni->workq);
	FUNC0(&uni->delq);
}