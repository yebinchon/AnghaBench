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
struct passwd {int dummy; } ;
typedef  scalar_t__ mode_t ;
typedef  int /*<<< orphan*/  login_cap_t ;

/* Variables and functions */
 unsigned long LOGIN_SETCPUMASK ; 
 unsigned long LOGIN_SETENV ; 
 unsigned long LOGIN_SETPATH ; 
 unsigned long LOGIN_SETRESOURCES ; 
 unsigned long LOGIN_SETUMASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct passwd const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static mode_t
FUNC4(login_cap_t *lc, const struct passwd *pwd,
		mode_t mymask, unsigned long flags)
{
    if (lc) {
	/* Set resources */
	if (flags & LOGIN_SETRESOURCES)
	    FUNC3(lc);
	/* See if there's a umask override */
	if (flags & LOGIN_SETUMASK)
	    mymask = (mode_t)FUNC0(lc, "umask", mymask, mymask);
	/* Set paths */
	if (flags & LOGIN_SETPATH)
	    FUNC2(lc, pwd, 1);
	/* Set environment */
	if (flags & LOGIN_SETENV)
	    FUNC2(lc, pwd, 0);
	/* Set cpu affinity */
	if (flags & LOGIN_SETCPUMASK)
	    FUNC1(lc);
    }
    return (mymask);
}