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
struct login_time {int /*<<< orphan*/  lt_dow; } ;
typedef  struct login_time login_time_t ;
typedef  int /*<<< orphan*/  login_cap_t ;

/* Variables and functions */
 int /*<<< orphan*/  LTM_NONE ; 
 char** FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 struct login_time FUNC1 (char const*) ; 
 struct login_time* FUNC2 (struct login_time*,int) ; 

login_time_t *
FUNC3(login_cap_t *lc, char const *cap, int *ltno,
	       login_time_t **ltptr)
{
    int			j = 0;
    struct login_time	*lt = NULL;
    const char		**tl;

    if ((tl = FUNC0(lc, cap, NULL)) != NULL) {

	while (tl[j++] != NULL)
	    ;
	if (*ltno >= j)
	    lt = *ltptr;
	else if ((lt = FUNC2(*ltptr, j * sizeof(struct login_time))) != NULL) {
	    *ltno = j;
	    *ltptr = lt;
	}
	if (lt != NULL) {
	    int	    i = 0;

	    for (--j; i < j; i++)
		lt[i] = FUNC1(tl[i]);
	    lt[i].lt_dow = LTM_NONE;
	}
    }
    return lt;
}