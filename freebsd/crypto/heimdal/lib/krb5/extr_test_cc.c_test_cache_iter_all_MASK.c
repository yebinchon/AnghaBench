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
typedef  int /*<<< orphan*/  krb5_cccol_cursor ;
typedef  int /*<<< orphan*/ * krb5_ccache ;

/* Variables and functions */
 scalar_t__ debug_flag ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

__attribute__((used)) static void
FUNC11(krb5_context context)
{
    krb5_cccol_cursor cursor;
    krb5_error_code ret;
    krb5_ccache id;

    ret = FUNC5 (context, &cursor);
    if (ret)
	FUNC7(context, 1, ret, "krb5_cccol_cursor_new");


    while ((ret = FUNC6 (context, cursor, &id)) == 0 && id != NULL) {
	krb5_principal principal;
	char *name;

	if (debug_flag)
	    FUNC10("name: %s\n", FUNC2(context, id));
	ret = FUNC3(context, id, &principal);
	if (ret == 0) {
	    ret = FUNC9(context, principal, &name);
	    if (ret == 0) {
		if (debug_flag)
		    FUNC10("\tprincipal: %s\n", name);
		FUNC0(name);
	    }
	    FUNC8(context, principal);
	}
	FUNC1(context, id);
    }

    FUNC4(context, &cursor);
}