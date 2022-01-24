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
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache ;
typedef  int /*<<< orphan*/  krb5_cc_cache_cursor ;

/* Variables and functions */
 scalar_t__ KRB5_CC_NOSUPP ; 
 scalar_t__ debug_flag ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,scalar_t__,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

__attribute__((used)) static void
FUNC12(krb5_context context, const char *type, int destroy)
{
    krb5_cc_cache_cursor cursor;
    krb5_error_code ret;
    krb5_ccache id;

    ret = FUNC2 (context, type, &cursor);
    if (ret == KRB5_CC_NOSUPP)
	return;
    else if (ret)
	FUNC8(context, 1, ret, "krb5_cc_cache_get_first(%s)", type);


    while ((ret = FUNC3 (context, cursor, &id)) == 0) {
	krb5_principal principal;
	char *name;

	if (debug_flag)
	    FUNC11("name: %s\n", FUNC6(context, id));
	ret = FUNC7(context, id, &principal);
	if (ret == 0) {
	    ret = FUNC10(context, principal, &name);
	    if (ret == 0) {
		if (debug_flag)
		    FUNC11("\tprincipal: %s\n", name);
		FUNC0(name);
	    }
	    FUNC9(context, principal);
	}
	if (destroy)
	    FUNC5(context, id);
	else
	    FUNC4(context, id);
    }

    FUNC1(context, cursor);
}