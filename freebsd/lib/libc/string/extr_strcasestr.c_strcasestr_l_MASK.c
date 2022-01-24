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
typedef  int /*<<< orphan*/  locale_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,size_t,int /*<<< orphan*/ ) ; 
 char FUNC3 (unsigned char,int /*<<< orphan*/ ) ; 

char *
FUNC4(const char *s, const char *find, locale_t locale)
{
	char c, sc;
	size_t len;
	FUNC0(locale);

	if ((c = *find++) != 0) {
		c = FUNC3((unsigned char)c, locale);
		len = FUNC1(find);
		do {
			do {
				if ((sc = *s++) == 0)
					return (NULL);
			} while ((char)FUNC3((unsigned char)sc, locale) != c);
		} while (FUNC2(s, find, len, locale) != 0);
		s--;
	}
	return ((char *)s);
}