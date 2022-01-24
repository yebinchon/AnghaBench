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
typedef  int /*<<< orphan*/ * krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_const_principal ;
typedef  int /*<<< orphan*/  krb5_boolean ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char** FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static krb5_error_code
FUNC5(OM_uint32 *minor_status,
	     krb5_context context, krb5_const_principal name,
	     const char *option, krb5_boolean *compat,
	     krb5_boolean match_val)
{
    krb5_error_code ret = 0;
    char **p, **q;
    krb5_principal match;


    p = FUNC1(context, NULL, "gssapi",
				option, NULL);
    if(p == NULL)
	return 0;

    match = NULL;
    for(q = p; *q; q++) {
	ret = FUNC3(context, *q, &match);
	if (ret)
	    break;

	if (FUNC4(context, name, match)) {
	    *compat = match_val;
	    break;
	}

	FUNC2(context, match);
	match = NULL;
    }
    if (match)
	FUNC2(context, match);
    FUNC0(p);

    if (ret) {
	if (minor_status)
	    *minor_status = ret;
	return GSS_S_FAILURE;
    }

    return 0;
}