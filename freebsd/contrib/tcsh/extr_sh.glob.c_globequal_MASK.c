#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* di_prev; TYPE_1__* di_next; } ;
struct TYPE_5__ {int /*<<< orphan*/  di_name; } ;
struct TYPE_4__ {int /*<<< orphan*/  di_name; } ;
typedef  char Char ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  STRowd ; 
 char* FUNC1 (char const*,char*) ; 
 TYPE_3__* dcwd ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

Char *
FUNC4(Char *old)
{
    int     dig;
    const Char *dir;
    Char    *b;

    /*
     * kfk - 17 Jan 1984 - stack hack allows user to get at arbitrary dir names
     * in stack. PWP: let =foobar pass through (for X windows)
     */
    if (old[1] == '-' && (old[2] == '\0' || old[2] == '/')) {
	/* =- */
	const Char *olddir = FUNC3 (STRowd);

	if (olddir && *olddir &&
	    !dcwd->di_next->di_name && !dcwd->di_prev->di_name)
	    return FUNC1(olddir, &old[2]);
	dig = -1;
	b = &old[2];
    }
    else if (FUNC0(old[1])) {
	/* =<number> */
	dig = old[1] - '0';
	for (b = &old[2]; FUNC0(*b); b++)
	    dig = dig * 10 + (*b - '0');
	if (*b != '\0' && *b != '/')
	    /* =<number>foobar */
	    return old;
    }
    else
	/* =foobar */
	return old;

    dir = FUNC2(dig);
    if (dir == NULL)
	return NULL;
    return FUNC1(dir, b);
}