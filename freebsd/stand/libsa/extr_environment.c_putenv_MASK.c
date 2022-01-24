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
 int FUNC1 (char*,char*,int) ; 
 char* FUNC2 (char*,char) ; 
 char* FUNC3 (char*) ; 

int
FUNC4(char *string)
{
    char	*value, *copy;
    int		result;

    copy = FUNC3(string);
    if ((value = FUNC2(copy, '=')) != NULL)
	*(value++) = 0;
    result = FUNC1(copy, value, 1);
    FUNC0(copy);
    return(result);
}