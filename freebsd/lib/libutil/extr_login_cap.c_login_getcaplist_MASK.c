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
typedef  int /*<<< orphan*/  login_cap_t ;

/* Variables and functions */
 char const** FUNC0 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

const char **
FUNC2(login_cap_t *lc, const char *cap, const char *chars)
{
    const char *lstring;

    if (chars == NULL)
	chars = ", \t";
    if ((lstring = FUNC1(lc, cap, NULL, NULL)) != NULL)
	return FUNC0(lstring, chars, NULL);
    return NULL;
}