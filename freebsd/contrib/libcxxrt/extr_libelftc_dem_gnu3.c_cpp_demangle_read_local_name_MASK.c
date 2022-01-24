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
struct cpp_demangle_data {char* cur; int paren; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_DEMANGLE_TRY_LIMIT ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (struct cpp_demangle_data*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpp_demangle_data*,int) ; 

__attribute__((used)) static int
FUNC5(struct cpp_demangle_data *ddata)
{
	size_t limit;

	if (ddata == NULL)
		return (0);
	if (*(++ddata->cur) == '\0')
		return (0);
	if (!FUNC2(ddata))
		return (0);

	limit = 0;
	for (;;) {
		if (!FUNC4(ddata, 1))
			return (0);
		if (*ddata->cur == 'E')
			break;
		if (limit++ > CPP_DEMANGLE_TRY_LIMIT)
			return (0);
	}
	if (*(++ddata->cur) == '\0')
		return (0);
	if (ddata->paren == true) {
		if (!FUNC1(ddata, ")", 1))
			return (0);
		ddata->paren = false;
	}
	if (*ddata->cur == 's')
		++ddata->cur;
	else {
		if (!FUNC1(ddata, "::", 2))
			return (0);
		if (!FUNC3(ddata))
			return (0);
	}
	if (*ddata->cur == '_') {
		++ddata->cur;
		while (FUNC0(*ddata->cur) != 0)
			++ddata->cur;
	}

	return (1);
}