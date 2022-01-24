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
 int /*<<< orphan*/  LOG_ERR ; 
 int FUNC0 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 

__attribute__((used)) static int FUNC3(char *group, char *machine, char *user)
{
#ifdef HAVE_YP_GET_DEFAULT_DOMAIN
    static char *mydomain = 0;

    if (mydomain == 0)
	yp_get_default_domain(&mydomain);
    return (innetgr(group, machine, user, mydomain));
#else
    FUNC1(LOG_ERR, "NIS netgroup support not configured");
    return 0;
#endif
}