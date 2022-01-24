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
typedef  int ptrdiff_t ;

/* Variables and functions */
 char* FUNC0 (char const*,char) ; 
 size_t FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC3(const char *str, const char *list)
{
	const char *next;
	size_t len;

	len = FUNC1(str);
	while (*list != '\0') {
		while (*list == ',')
			++list;
		if ((next = FUNC0(list, ',')) == NULL)
			next = FUNC0(list, '\0');
		if (next - list == (ptrdiff_t)len &&
		    FUNC2(list, str, len) == 0)
			return (1);
		list = next;
	}
	return (0);
}