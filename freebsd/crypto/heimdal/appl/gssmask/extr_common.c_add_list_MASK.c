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
 char** FUNC0 (size_t,int) ; 
 char*** FUNC1 (char***,int) ; 

__attribute__((used)) static void
FUNC2(char ****list, size_t *listlen, char **str, size_t len)
{
    size_t i;
    *list = FUNC1(*list, sizeof(**list) * (*listlen + 1));

    (*list)[*listlen] = FUNC0(len, sizeof(**list));
    for (i = 0; i < len; i++)
	(*list)[*listlen][i] = str[i];
    (*listlen)++;
}