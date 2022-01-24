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
struct varent {int /*<<< orphan*/ ** vec; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STRnostat ; 
 int /*<<< orphan*/  STRstar ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 struct varent* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(Char *dir)
{
    struct varent *vp;
    Char **cp;

    if ((vp = FUNC2(STRnostat)) == NULL || (cp = vp->vec) == NULL)
	return FALSE;
    for (; *cp != NULL; cp++) {
	if (FUNC1(*cp, STRstar) == 0)
	    return TRUE;
	if (FUNC0(dir, *cp))
	    return TRUE;
    }
    return FALSE;
}