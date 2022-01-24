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
 int HTTPHL_END ; 
 int HTTPHL_ERROR ; 
 int HTTPHL_STRING ; 
 int HTTPHL_WORD ; 
 char* FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 size_t FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static int
FUNC4(const char **cpp, char *buf)
{
	size_t l;
	/* Eat initial whitespace */
	*cpp += FUNC3(*cpp, " \t");
	if (**cpp == 0)
		return (HTTPHL_END);

	/* Separator ? */
	if (**cpp == ',' || **cpp == '=')
		return (*((*cpp)++));

	/* String ? */
	if (**cpp == '"') {
		*cpp = FUNC0(++*cpp, buf);
		if (*cpp == NULL)
			return (HTTPHL_ERROR);
		return (HTTPHL_STRING);
	}

	/* Read other token, until separator or whitespace */
	l = FUNC2(*cpp, " \t,=");
	FUNC1(buf, *cpp, l);
	buf[l] = 0;
	*cpp += l;
	return (HTTPHL_WORD);
}