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
struct protoent_test_data {int dummy; } ;
struct protoent {char* p_name; char** p_aliases; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct protoent*,struct protoent*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct protoent*) ; 
 struct protoent* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct protoent_test_data*,struct protoent*) ; 
 scalar_t__ FUNC5 (struct protoent*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct protoent *pe_model, void *mdata)
{
	char **alias;
	struct protoent *pe;

	FUNC3("testing getprotobyname() with the following data:\n");
	FUNC1(pe_model);

	pe = FUNC2(pe_model->p_name);
	if (FUNC5(pe, NULL) != 0)
		goto errfin;

	if ((FUNC0(pe, pe_model, NULL) != 0) &&
	    (FUNC4((struct protoent_test_data *)mdata, pe)
	    !=0))
	    goto errfin;

	for (alias = pe_model->p_aliases; *alias; ++alias) {
		pe = FUNC2(*alias);

		if (FUNC5(pe, NULL) != 0)
			goto errfin;

		if ((FUNC0(pe, pe_model, NULL) != 0) &&
		    (FUNC4(
		    (struct protoent_test_data *)mdata, pe) != 0))
		    goto errfin;
	}

	FUNC3("ok\n");
	return (0);

errfin:
	FUNC3("not ok\n");

	return (-1);
}