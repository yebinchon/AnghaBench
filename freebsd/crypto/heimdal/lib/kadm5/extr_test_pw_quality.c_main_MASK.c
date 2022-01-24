#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_3__ {int /*<<< orphan*/  length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ help_flag ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  num_args ; 
 int /*<<< orphan*/ * password ; 
 char const* principal ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ version_flag ; 

int
FUNC12(int argc, char **argv)
{
    krb5_error_code ret;
    krb5_context context;
    krb5_principal p;
    const char *s;
    krb5_data pw_data;

    FUNC8(&context, argc, argv, args, num_args, NULL);

    if(help_flag)
	FUNC9(0, args, num_args);
    if(version_flag) {
	FUNC10(NULL);
	FUNC0(0);
    }

    if (principal == NULL)
	FUNC4(context, 1, "no principal given");
    if (password == NULL)
	FUNC4(context, 1, "no password given");

    ret = FUNC7(context, principal, &p);
    if (ret)
	FUNC4(context, 1, "krb5_parse_name: %s", principal);

    pw_data.data = password;
    pw_data.length = FUNC11(password);

    FUNC3 (context, NULL, NULL);
    ret = FUNC1(context, NULL);
    if (ret)
	FUNC4(context, 1, "kadm5_add_passwd_quality_verifier");

    s = FUNC2 (context, p, &pw_data);
    if (s)
	FUNC4(context, 1, "kadm5_check_password_quality:\n%s", s);

    FUNC6(context, p);
    FUNC5(context);

    return 0;
}