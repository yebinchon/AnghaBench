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
struct cpp_demangle_data {char* cur; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct cpp_demangle_data*,long) ; 
 scalar_t__ errno ; 
 long FUNC2 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC3(struct cpp_demangle_data *ddata)
{
	long nth;

	if (ddata == NULL || *ddata->cur != 'T')
		return (0);

	++ddata->cur;

	if (*ddata->cur == '_')
		return (FUNC1(ddata, 0));
	else {

		errno = 0;
		if ((nth = FUNC2(ddata->cur, (char **) NULL, 36)) == 0 &&
		    errno != 0)
			return (0);

		/* T_ is first */
		++nth;

		while (*ddata->cur != '_')
			++ddata->cur;

		FUNC0(nth > 0);

		return (FUNC1(ddata, nth));
	}

	/* NOTREACHED */
	return (0);
}