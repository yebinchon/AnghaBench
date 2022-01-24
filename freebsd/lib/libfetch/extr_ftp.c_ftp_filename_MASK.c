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
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static const char *
FUNC3(const char *file, int *len, int *type)
{
	const char *s;

	if ((s = FUNC2(file, '/')) == NULL)
		s = file;
	else
		s = s + 1;
	*len = FUNC0(s);
	if (*len > 7 && FUNC1(s + *len - 7, ";type=", 6) == 0) {
		*type = s[*len - 1];
		*len -= 7;
	} else {
		*type = '\0';
	}
	return (s);
}