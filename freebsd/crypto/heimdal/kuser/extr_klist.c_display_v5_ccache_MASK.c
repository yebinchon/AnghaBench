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

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC9 (krb5_context context, krb5_ccache ccache,
		   int do_test, int do_verbose,
		   int do_flags, int do_hidden)
{
    krb5_error_code ret;
    krb5_principal principal;
    int exit_status = 0;


    ret = FUNC4 (context, ccache, &principal);
    if (ret) {
	if(ret == ENOENT) {
	    if (!do_test)
		FUNC7(context, FUNC0("No ticket file: %s", ""),
			   FUNC3(context, ccache));
	    return 1;
	} else
	    FUNC5 (context, 1, ret, "krb5_cc_get_principal");
    }
    if (do_test)
	exit_status = FUNC1 (context, ccache, principal, NULL);
    else
	FUNC8 (context, ccache, principal, do_verbose,
		       do_flags, do_hidden);

    ret = FUNC2 (context, ccache);
    if (ret)
	FUNC5 (context, 1, ret, "krb5_cc_close");

    FUNC6 (context, principal);

    return exit_status;
}