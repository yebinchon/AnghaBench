#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int require_preauth; } ;
typedef  TYPE_1__ krb5_kdc_configuration ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_12__ {scalar_t__ len; } ;
struct TYPE_11__ {int num_strings; int /*<<< orphan*/ * strings; } ;

/* Variables and functions */
 int DETACH_IS_DEFAULT ; 
 int /*<<< orphan*/  ETYPE_DES_CBC_CRC ; 
 int /*<<< orphan*/  ETYPE_DES_CBC_MD4 ; 
 int /*<<< orphan*/  ETYPE_DES_CBC_MD5 ; 
 int /*<<< orphan*/  ETYPE_DES_CBC_NONE ; 
 int /*<<< orphan*/  ETYPE_DES_CFB64_NONE ; 
 int /*<<< orphan*/  ETYPE_DES_PCBC_NONE ; 
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_6__ addresses_str ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ builtin_hdb_flag ; 
 int /*<<< orphan*/ * config_file ; 
 int detach_from_console ; 
 int disable_des ; 
 int enable_http ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_7__ explicit_addresses ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ help_flag ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,char*,int /*<<< orphan*/ *) ; 
 void* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 char** FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC17 (char**) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,char***) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,char**) ; 
 char const* max_request_str ; 
 int max_request_tcp ; 
 int max_request_udp ; 
 int /*<<< orphan*/  num_args ; 
 int FUNC24 (char const*,int /*<<< orphan*/ *) ; 
 char* port_str ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (char*,char*) ; 
 int /*<<< orphan*/ * request_log ; 
 int require_preauth ; 
 char* FUNC27 (char const*) ; 
 int /*<<< orphan*/  FUNC28 (int) ; 
 scalar_t__ version_flag ; 
 int /*<<< orphan*/  FUNC29 (char*,char*) ; 

krb5_kdc_configuration *
FUNC30(krb5_context context, int argc, char **argv)
{
    krb5_kdc_configuration *config;
    krb5_error_code ret;
    int optidx = 0;
    const char *p;

    while(FUNC6(args, num_args, argc, argv, &optidx))
	FUNC29("error at argument `%s'", argv[optidx]);

    if(help_flag)
	FUNC28 (0);

    if (version_flag) {
	FUNC25(NULL);
	FUNC3(0);
    }

    if (builtin_hdb_flag) {
	char *list;
	ret = FUNC8(context, &list);
	if (ret)
	    FUNC15(context, 1, ret, "listing builtin hdb backends");
	FUNC26("builtin hdb backends: %s\n", list);
	FUNC4(list);
	FUNC3(0);
    }

    argc -= optidx;
    argv += optidx;

    if (argc != 0)
	FUNC28(1);

    {
	char **files;

	if (config_file == NULL) {
	    FUNC1(&config_file, "%d/kdc.conf", FUNC7(context));
	    if (config_file == NULL)
		FUNC2(1, "out of memory");
	}

	ret = FUNC22(config_file, &files);
	if (ret)
	    FUNC15(context, 1, ret, "getting configuration files");

	ret = FUNC23(context, files);
	FUNC17(files);
	if(ret)
	    FUNC15(context, 1, ret, "reading configuration files");
    }

    ret = FUNC18(context, &config);
    if (ret)
	FUNC15(context, 1, ret, "krb5_kdc_default_config");

    FUNC9(context, "kdc", config);

    ret = FUNC20(context, config);
    if (ret)
	FUNC15(context, 1, ret, "krb5_kdc_set_dbinfo");

    if(max_request_str)
	max_request_tcp = max_request_udp = FUNC24(max_request_str, NULL);

    if(max_request_tcp == 0){
	p = FUNC12 (context,
				    NULL,
				    "kdc",
				    "max-request",
				    NULL);
	if(p)
	    max_request_tcp = max_request_udp = FUNC24(p, NULL);
    }

    if(require_preauth != -1)
	config->require_preauth = require_preauth;

    if(port_str == NULL){
	p = FUNC12(context, NULL, "kdc", "ports", NULL);
	if (p != NULL)
	    port_str = FUNC27(p);
    }

    explicit_addresses.len = 0;

    if (addresses_str.num_strings) {
	int i;

	for (i = 0; i < addresses_str.num_strings; ++i)
	    FUNC0 (context, addresses_str.strings[i], i == 0);
	FUNC5 (&addresses_str);
    } else {
	char **foo = FUNC13 (context, NULL,
					      "kdc", "addresses", NULL);

	if (foo != NULL) {
	    FUNC0 (context, *foo++, TRUE);
	    while (*foo)
		FUNC0 (context, *foo++, FALSE);
	}
    }

    if(enable_http == -1)
	enable_http = FUNC10(context, NULL, "kdc",
					   "enable-http", NULL);

    if(request_log == NULL)
	request_log = FUNC12(context, NULL,
					     "kdc",
					     "kdc-request-log",
					     NULL);

    if (FUNC12(context, NULL, "kdc",
			       "enforce-transited-policy", NULL))
	FUNC16(context, 1, "enforce-transited-policy deprecated, "
		  "use [kdc]transited-policy instead");

#ifdef SUPPORT_DETACH
    if(detach_from_console == -1)
	detach_from_console = krb5_config_get_bool_default(context, NULL,
							   DETACH_IS_DEFAULT,
							   "kdc",
							   "detach", NULL);
#endif /* SUPPORT_DETACH */

    if(max_request_tcp == 0)
	max_request_tcp = 64 * 1024;
    if(max_request_udp == 0)
	max_request_udp = 64 * 1024;

    if (port_str == NULL)
	port_str = "+";

    if(disable_des == -1)
	disable_des = FUNC11(context, NULL,
						   FALSE,
						   "kdc",
						   "disable-des", NULL);
    if(disable_des) {
	FUNC14(context, ETYPE_DES_CBC_CRC);
	FUNC14(context, ETYPE_DES_CBC_MD4);
	FUNC14(context, ETYPE_DES_CBC_MD5);
	FUNC14(context, ETYPE_DES_CBC_NONE);
	FUNC14(context, ETYPE_DES_CFB64_NONE);
	FUNC14(context, ETYPE_DES_PCBC_NONE);
    }

    FUNC21(context);

    FUNC19(context, config);

    return config;
}