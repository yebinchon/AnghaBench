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
struct varent {char* v_name; int /*<<< orphan*/ ** vec; struct varent* v_left; struct varent* v_right; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static Char **
FUNC1(Char *nam, struct varent *vp, int cmd)
{
    Char **rv;

    for (vp = vp->v_left; vp; vp = vp->v_right) {
	if (vp->v_left && (rv = FUNC1(nam, vp, cmd)) != NULL)
	    return rv;
	if (cmd) {
	    if (vp->v_name[0] != '-')
		continue;
	    if (FUNC0(nam, &vp->v_name[1]) && vp->vec != NULL)
		return vp->vec;
	}
	else
	    if (FUNC0(nam, vp->v_name) && vp->vec != NULL)
		return vp->vec;
    }
    return NULL;
}