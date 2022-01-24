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
typedef  char const* krb5_realm ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const***) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static krb5_boolean
FUNC5(krb5_context context,
		       krb5_principal principal,
		       const char *luser)
{
    krb5_error_code ret;
    krb5_realm *realms, *r;
    krb5_boolean result = FALSE;

    /* multi-component principals can never match */
    if(FUNC2(context, principal, 1) != NULL)
	return FALSE;

    ret = FUNC1 (context, &realms);
    if (ret)
	return FALSE;

    for (r = realms; *r != NULL; ++r) {
	if(FUNC4(FUNC3(context, principal),
		  *r) != 0)
	    continue;
	if(FUNC4(FUNC2(context, principal, 0),
		  luser) == 0) {
	    result = TRUE;
	    break;
	}
    }
    FUNC0 (context, realms);
    return result;
}