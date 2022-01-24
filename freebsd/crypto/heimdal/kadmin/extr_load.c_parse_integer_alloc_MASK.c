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
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 unsigned int* FUNC1 (int) ; 
 int FUNC2 (unsigned int*,char const*) ; 

__attribute__((used)) static int
FUNC3 (unsigned int **u, const char *s)
{
    unsigned int tmp;
    int ret;

    *u = NULL;
    ret = FUNC2 (&tmp, s);
    if (ret == 1) {
	*u = FUNC1 (sizeof (**u));
	if (*u == NULL)
	    FUNC0 (context, 1, "malloc: out of memory");
	**u = tmp;
    }
    return ret;
}