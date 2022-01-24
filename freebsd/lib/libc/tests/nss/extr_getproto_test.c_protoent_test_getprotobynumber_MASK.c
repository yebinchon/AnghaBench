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
struct protoent {int /*<<< orphan*/  p_proto; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct protoent*,struct protoent*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct protoent*) ; 
 struct protoent* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct protoent_test_data*,struct protoent*) ; 
 scalar_t__ FUNC5 (struct protoent*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct protoent *pe_model, void *mdata)
{
	struct protoent *pe;

	FUNC3("testing getprotobyport() with the following data...\n");
	FUNC1(pe_model);

	pe = FUNC2(pe_model->p_proto);
	if ((FUNC5(pe, NULL) != 0) ||
	    ((FUNC0(pe, pe_model, NULL) != 0) &&
	    (FUNC4((struct protoent_test_data *)mdata, pe)
	    != 0))) {
		FUNC3("not ok\n");
		return (-1);
	} else {
		FUNC3("ok\n");
		return (0);
	}
}