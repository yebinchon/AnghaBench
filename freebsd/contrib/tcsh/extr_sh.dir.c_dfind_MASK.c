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
struct directory {struct directory* di_prev; } ;
typedef  scalar_t__ Char ;

/* Variables and functions */
 int ERR_DEEP ; 
 int ERR_NAME ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 struct directory* dcwd ; 
 struct directory dhead ; 
 int FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static struct directory *
FUNC3(Char *cp)
{
    struct directory *dp;
    int i;
    Char *ep;

    if (*cp++ != '+')
	return (0);
    for (ep = cp; FUNC0(*ep); ep++)
	continue;
    if (*ep)
	return (0);
    i = FUNC1(cp);
    if (i <= 0)
	return (0);
    for (dp = dcwd; i != 0; i--) {
	if ((dp = dp->di_prev) == &dhead)
	    dp = dp->di_prev;
	if (dp == dcwd)
	    FUNC2(ERR_NAME | ERR_DEEP);
    }
    return (dp);
}