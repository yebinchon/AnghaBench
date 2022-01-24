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
typedef  scalar_t__ krb5_error_code ;

/* Variables and functions */
 int /*<<< orphan*/  DETACH_IS_DEFAULT ; 
 int /*<<< orphan*/ * _PATH_KCM_CONF ; 
 int /*<<< orphan*/  args ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/ * config_file ; 
 int detach_from_console ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char**,int*) ; 
 scalar_t__ help_flag ; 
 int /*<<< orphan*/  kcm_context ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC8 (char**) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char***) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char**) ; 
 int max_request ; 
 char const* max_request_str ; 
 int /*<<< orphan*/  num_args ; 
 int FUNC11 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * system_principal ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 scalar_t__ version_flag ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 

void
FUNC15(int argc, char **argv)
{
    krb5_error_code ret;
    int optind = 0;
    const char *p;

    while(FUNC2(args, num_args, argc, argv, &optind))
	FUNC14("error at argument `%s'", argv[optind]);

    if(help_flag)
	FUNC13 (0);

    if (version_flag) {
	FUNC12(NULL);
	FUNC1(0);
    }

    argc -= optind;
    argv += optind;

    if (argc != 0)
	FUNC13(1);

    {
	char **files;

	if(config_file == NULL)
	    config_file = _PATH_KCM_CONF;

	ret = FUNC9(config_file, &files);
	if (ret)
	    FUNC7(kcm_context, 1, ret, "getting configuration files");

	ret = FUNC10(kcm_context, files);
	FUNC8(files);
	if(ret)
	    FUNC7(kcm_context, 1, ret, "reading configuration files");
    }

    if(max_request_str)
	max_request = FUNC11(max_request_str, NULL);

    if(max_request == 0){
	p = FUNC6 (kcm_context,
				    NULL,
				    "kcm",
				    "max-request",
				    NULL);
	if(p)
	    max_request = FUNC11(p, NULL);
    }

    if (system_principal == NULL) {
	system_principal = FUNC4("principal");
    }

    if (system_principal != NULL) {
	ret = FUNC0();
	if (ret)
	    FUNC7(kcm_context, 1, ret, "initializing system ccache");
    }

#ifdef SUPPORT_DETACH
    if(detach_from_console == -1)
	detach_from_console = krb5_config_get_bool_default(kcm_context, NULL,
							   DETACH_IS_DEFAULT,
							   "kcm",
							   "detach", NULL);
#endif
    FUNC3();
    if(max_request == 0)
	max_request = 64 * 1024;
}