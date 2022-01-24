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
 char* FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 size_t FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 

__attribute__((used)) static char *
FUNC5(const char *str, const char *what, const char *with,
    int globally)
{
	const	char	*s;
	char	*r, *result;
	size_t	len, with_len, what_len;

	len = FUNC2(str);
	with_len = FUNC2(with);
	what_len = FUNC2(what);

	/* calculate length we need for result */
	s = str;
	while (*s) {
		if (*s == *what && !FUNC3(s, what, what_len)) {
			len += with_len - what_len;
			if (!globally)
				break;
			s += what_len;
		} else
			s++;
	}
	r = result = FUNC0(len + 1, sizeof(*r));
	if (result == NULL)
		return NULL;
	s = str;
	while (*s) {
		if (*s == *what && !FUNC3(s, what, what_len)) {
			(void)FUNC4(r, with, with_len);
			r += with_len;
			s += what_len;
			if (!globally) {
				(void)FUNC1(r, s);
				return result;
			}
		} else
			*r++ = *s++;
	}
	*r = '\0';
	return result;
}