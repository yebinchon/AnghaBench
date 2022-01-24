#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pwbuf ;
typedef  int /*<<< orphan*/ * krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_6__ {scalar_t__ length; scalar_t__ data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache ;

/* Variables and functions */
 int BUFSIZ ; 
 scalar_t__ FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int*,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char*,int,char*) ; 

__attribute__((used)) static int
FUNC12(krb5_context context,
		krb5_principal principal,
		krb5_ccache id)
{
    krb5_data result_code_string, result_string;
    int result_code;
    krb5_error_code ret;
    char pwbuf[BUFSIZ];
    char *msg, *name;

    FUNC4 (&result_code_string);
    FUNC4 (&result_string);

    name = msg = NULL;
    if (principal == NULL)
	FUNC1(&msg, "New password: ");
    else {
	ret = FUNC9(context, principal, &name);
	if (ret)
	    FUNC5(context, 1, ret, "krb5_unparse_name");

	FUNC1(&msg, "New password for %s: ", name);
    }

    if (msg == NULL)
	FUNC6 (context, 1, "out of memory");

    ret = FUNC0 (pwbuf, sizeof(pwbuf), msg, 1);
    FUNC2(msg);
    if (name)
	FUNC2(name);
    if (ret != 0) {
	return 1;
    }

    ret = FUNC8 (context, id, pwbuf,
					  principal,
					  &result_code,
					  &result_code_string,
					  &result_string);
    if (ret) {
	FUNC10 (context, ret, "krb5_set_password_using_ccache");
	return 1;
    }

    FUNC11 ("%s%s%.*s\n", FUNC7(context, result_code),
	    result_string.length > 0 ? " : " : "",
	    (int)result_string.length,
	    result_string.length > 0 ? (char *)result_string.data : "");

    FUNC3 (&result_code_string);
    FUNC3 (&result_string);

    return ret != 0;
}