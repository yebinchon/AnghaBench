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
struct group_test_data {int dummy; } ;
struct group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct group_test_data*,struct group*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct group* FUNC2 () ; 
 int /*<<< orphan*/  group ; 
 scalar_t__ FUNC3 (struct group*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct group_test_data *td)
{
	struct group *grp;

	FUNC4(1);
	while ((grp = FUNC2()) != NULL) {
		if (FUNC3(grp, NULL) == 0)
			FUNC0(group, td, grp);
		else
			return (-1);
	}
	FUNC1();

	return (0);
}