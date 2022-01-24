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
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  heim_sipc ;

/* Variables and functions */
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  config ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ help_flag ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ntlm_service ; 
 int /*<<< orphan*/  num_args ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ version_flag ; 

int
FUNC15(int argc, char **argv)
{
    krb5_context context;
    int ret, optidx = 0;

    FUNC13(argv[0]);

    if (FUNC1(args, num_args, argc, argv, &optidx))
	FUNC14(1);

    if (help_flag)
	FUNC14(0);

    if (version_flag) {
	FUNC12(NULL);
	FUNC0(0);
    }

    ret = FUNC9(&context);
    if (ret)
	FUNC8(context, 1, "krb5_init_context");

    ret = FUNC10(context, &config);
    if (ret)
	FUNC7(context, 1, ret, "krb5_kdc_default_config");

    FUNC6(context, "digest-service", config);

    ret = FUNC11(context, config);
    if (ret)
	FUNC7(context, 1, ret, "krb5_kdc_set_dbinfo");

#if __APPLE__
    {
	heim_sipc mach;
	heim_sipc_launchd_mach_init("org.h5l.ntlm-service",
				    ntlm_service, context, &mach);
	heim_sipc_timeout(60);
    }
#endif
    {
	heim_sipc un;
	FUNC4("org.h5l.ntlm-service", ntlm_service, NULL, &un);
    }

    FUNC2();
    return 0;
}