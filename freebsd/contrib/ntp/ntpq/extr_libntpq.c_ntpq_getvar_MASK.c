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

/* Variables and functions */
 scalar_t__ FUNC0 (size_t*,char const**,char**,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t,size_t) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 size_t FUNC3 (char*) ; 

size_t
FUNC4(
	const char *	resultbuf,
	size_t		datalen,
	const char *	varname,
	char *		varvalue,
	size_t		maxlen)
{
	char *	name;
	char *	value;
	size_t	idatalen;

	value = NULL;
	idatalen = (int)datalen;

	while (FUNC0(&idatalen, &resultbuf, &name, &value)) {
		if (FUNC2(varname, name) == 0) {
			FUNC1(varvalue, value, FUNC3(value), maxlen);

			return FUNC3(varvalue);
		}
	}

	return 0;
}