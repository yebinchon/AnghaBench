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
typedef  enum mandoc_esc { ____Placeholder_mandoc_esc } mandoc_esc ;

/* Variables and functions */
 char const ASCII_HYPH ; 
 int ESCAPE_ERROR ; 
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int FUNC2 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 

__attribute__((used)) static void
FUNC4(const char *p, int col, int *colp, int list)
{
	enum mandoc_esc	 esc;
	const char	*start, *end;
	int		 emit;

	/*
	 * Print as many column spaces til we achieve parity with the
	 * input document.
	 */

again:
	if (list && '\0' != *p) {
		while (FUNC1((unsigned char)*p))
			p++;

		while ('\'' == *p || '(' == *p || '"' == *p)
			p++;

		emit = FUNC0((unsigned char)p[0]) &&
			FUNC0((unsigned char)p[1]);

		for (start = p; '\0' != *p; p++)
			if ('\\' == *p) {
				p++;
				esc = FUNC2(&p, NULL, NULL);
				if (ESCAPE_ERROR == esc)
					return;
				emit = 0;
			} else if (FUNC1((unsigned char)*p))
				break;

		end = p - 1;

		while (end > start)
			if ('.' == *end || ',' == *end ||
					'\'' == *end || '"' == *end ||
					')' == *end || '!' == *end ||
					'?' == *end || ':' == *end ||
					';' == *end)
				end--;
			else
				break;

		if (emit && end - start >= 1) {
			for ( ; start <= end; start++)
				if (ASCII_HYPH == *start)
					FUNC3('-');
				else
					FUNC3((unsigned char)*start);
			FUNC3('\n');
		}

		if (FUNC1((unsigned char)*p))
			goto again;

		return;
	}

	while (*colp < col) {
		FUNC3(' ');
		(*colp)++;
	}

	/*
	 * Print the input word, skipping any special characters.
	 */
	while ('\0' != *p)
		if ('\\' == *p) {
			p++;
			esc = FUNC2(&p, NULL, NULL);
			if (ESCAPE_ERROR == esc)
				break;
		} else {
			FUNC3((unsigned char )*p++);
			(*colp)++;
		}
}