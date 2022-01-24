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
struct tac_handle {int dummy; } ;
typedef  int (* set_func ) (struct tac_handle*,char const*) ;
typedef  int /*<<< orphan*/  pam_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_CRIT ; 
 int PAM_SERVICE_ERR ; 
 int PAM_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ *,int,void const**) ; 
 int FUNC1 (struct tac_handle*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tac_handle*) ; 
 int /*<<< orphan*/  FUNC4 (struct tac_handle*) ; 

__attribute__((used)) static int
FUNC5(pam_handle_t *pamh, struct tac_handle *tach, int item,
    set_func func, const char *funcname)
{
	int retval;
	const void *value;

	retval = FUNC0(pamh, item, &value);
	if (retval != PAM_SUCCESS)
	    return retval;
	if (value != NULL && (*func)(tach, (const char *)value) == -1) {
		FUNC2(LOG_CRIT, "%s: %s", funcname, FUNC4(tach));
		FUNC3(tach);
		return PAM_SERVICE_ERR;
	}
	return PAM_SUCCESS;
}