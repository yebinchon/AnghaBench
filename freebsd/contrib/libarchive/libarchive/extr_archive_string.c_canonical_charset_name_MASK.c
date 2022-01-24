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
 scalar_t__ FUNC0 (char*,char*) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static const char *
FUNC2(const char *charset)
{
	char cs[16];
	char *p;
	const char *s;

	if (charset == NULL || charset[0] == '\0'
	    || FUNC1(charset) > 15)
		return (charset);

	/* Copy name to uppercase. */
	p = cs;
	s = charset;
	while (*s) {
		char c = *s++;
		if (c >= 'a' && c <= 'z')
			c -= 'a' - 'A';
		*p++ = c;
	}
	*p++ = '\0';

	if (FUNC0(cs, "UTF-8") == 0 ||
	    FUNC0(cs, "UTF8") == 0)
		return ("UTF-8");
	if (FUNC0(cs, "UTF-16BE") == 0 ||
	    FUNC0(cs, "UTF16BE") == 0)
		return ("UTF-16BE");
	if (FUNC0(cs, "UTF-16LE") == 0 ||
	    FUNC0(cs, "UTF16LE") == 0)
		return ("UTF-16LE");
	if (FUNC0(cs, "CP932") == 0)
		return ("CP932");
	return (charset);
}