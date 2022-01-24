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
 char** FUNC0 (int) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (char const*,char const*) ; 

__attribute__((used)) static const char **
FUNC4(const char *str, const char *chars, int *size)
{
    int	    i;
    char *ptr;
    const char *cptr;
    const char **res = NULL;

    /* count the sub-strings */
    for (i = 0, cptr = str; *cptr; i++) {
	int count = FUNC3(cptr, chars);
	cptr += count;
	if (*cptr)
	    ++cptr;
    }

    /* alloc the array */
    if ((ptr = FUNC1(str)) != NULL) {
	if ((res = FUNC0(++i)) == NULL)
	    FUNC2((void *)(uintptr_t)(const void *)str);
	else {
	    /* now split the string */
	    i = 0;
	    while (*ptr) {
		int count = FUNC3(ptr, chars);
		res[i++] = ptr;
		ptr += count;
		if (*ptr)
		    *ptr++ = '\0';
	    }
	    res[i] = NULL;
	}
    }

    if (size)
	*size = i;

    return res;
}