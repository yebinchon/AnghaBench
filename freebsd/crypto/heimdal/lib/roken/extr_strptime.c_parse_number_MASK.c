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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC5 (const char **buf, int n, int *num)
{
    char *s, *str;
    int i;

    str = FUNC3(n + 1);
    if (str == NULL)
	return -1;

    /* skip whitespace */
    for (; **buf != '\0' && FUNC2((unsigned char)(**buf)); (*buf)++)
	;

    /* parse at least n characters */
    for (i = 0; **buf != '\0' && i < n && FUNC1((unsigned char)(**buf)); i++, (*buf)++)
	str[i] = **buf;
    str[i] = '\0';

    *num = FUNC4 (str, &s, 10);
    FUNC0(str);
    if (s == str)
	return -1;

    return 0;
}