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
struct group {int /*<<< orphan*/  gr_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct group*,struct group*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct group*) ; 
 struct group* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct group_test_data*,struct group*) ; 
 scalar_t__ FUNC4 (struct group*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(struct group *grp_model, void *mdata)
{
	struct group *grp;

	FUNC5("testing getgrnam() with the following data:\n");
	FUNC1(grp_model);

	grp = FUNC2(grp_model->gr_name);
	if (FUNC4(grp, NULL) != 0)
		goto errfin;

	if (FUNC0(grp, grp_model, NULL) != 0 &&
	    FUNC3((struct group_test_data *)mdata, grp) != 0)
	    goto errfin;

	return (0);

errfin:
	return (-1);
}