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
struct ofw_devdesc {int dummy; } ;
struct env_var {int /*<<< orphan*/  ev_name; } ;

/* Variables and functions */
 int EV_NOHOOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,void const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ofw_devdesc*) ; 
 int FUNC2 (struct ofw_devdesc**,void const*,int /*<<< orphan*/ *) ; 

int
FUNC3(struct env_var *ev, int flags, const void *value)
{
    struct ofw_devdesc	*ncurr;
    int			rv;

    if ((rv = FUNC2(&ncurr, value, NULL)) != 0)
	return rv;

    FUNC1(ncurr);
    FUNC0(ev->ev_name, flags | EV_NOHOOK, value, NULL, NULL);
    return 0;
}