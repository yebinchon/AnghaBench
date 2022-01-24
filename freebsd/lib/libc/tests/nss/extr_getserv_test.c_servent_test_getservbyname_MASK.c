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
struct servent_test_data {int dummy; } ;
struct servent {char* s_name; char** s_aliases; int /*<<< orphan*/  s_proto; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct servent*,struct servent*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct servent*) ; 
 struct servent* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct servent_test_data*,struct servent*) ; 
 scalar_t__ FUNC5 (struct servent*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct servent *serv_model, void *mdata)
{
	char **alias;
	struct servent *serv;

	FUNC3("testing getservbyname() with the following data:\n");
	FUNC1(serv_model);

	serv = FUNC2(serv_model->s_name, serv_model->s_proto);
	if (FUNC5(serv, NULL) != 0)
		goto errfin;

	if ((FUNC0(serv, serv_model, NULL) != 0) &&
	    (FUNC4((struct servent_test_data *)mdata, serv)
	    !=0))
		goto errfin;

	for (alias = serv_model->s_aliases; *alias; ++alias) {
		serv = FUNC2(*alias, serv_model->s_proto);

		if (FUNC5(serv, NULL) != 0)
			goto errfin;

		if ((FUNC0(serv, serv_model, NULL) != 0) &&
		    (FUNC4(
		    (struct servent_test_data *)mdata, serv) != 0))
		    goto errfin;
	}

	FUNC3("ok\n");
	return (0);

errfin:
	FUNC3("not ok\n");

	return (-1);
}