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
 char* FUNC0 (char const*,int) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 

int FUNC2(const char *arg1, const char *arg2, char **pass1, char **pass2)
{
    int same;
    if (arg2 == NULL || arg1 == NULL || FUNC1(arg1, arg2))
        same = 0;
    else
        same = 1;
    if (arg1 != NULL) {
        *pass1 = FUNC0(arg1, same);
        if (*pass1 == NULL)
            return 0;
    } else if (pass1 != NULL) {
        *pass1 = NULL;
    }
    if (arg2 != NULL) {
        *pass2 = FUNC0(arg2, same ? 2 : 0);
        if (*pass2 == NULL)
            return 0;
    } else if (pass2 != NULL) {
        *pass2 = NULL;
    }
    return 1;
}