#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sigaction {int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; scalar_t__ sa_flags; } ;
struct servent {int s_port; } ;
typedef  int /*<<< orphan*/  krb5_keytab ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_7__ {scalar_t__ len; } ;
struct TYPE_6__ {int num_strings; int /*<<< orphan*/ * strings; } ;
struct TYPE_5__ {int num_strings; int /*<<< orphan*/ ** strings; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  KPASSWD_PORT ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__ addresses_str ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  check_function ; 
 int /*<<< orphan*/  check_library ; 
 int /*<<< orphan*/ * config_file ; 
 int /*<<< orphan*/  context ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_3__ explicit_addresses ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hdb_kt_ops ; 
 scalar_t__ help_flag ; 
 int FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  keytab_str ; 
 char** FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char**) ; 
 int FUNC14 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,char***) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_facility ; 
 int /*<<< orphan*/  num_args ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 TYPE_1__ policy_libraries ; 
 char* port_str ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 scalar_t__ realm_str ; 
 struct servent* FUNC26 (char*,char*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigterm ; 
 int FUNC30 (char*,char**,int) ; 
 scalar_t__ version_flag ; 

int
FUNC31 (int argc, char **argv)
{
    krb5_keytab keytab;
    krb5_error_code ret;
    char **files;
    int port, i;

    FUNC19(&context, argc, argv, args, num_args, NULL);

    if(help_flag)
	FUNC23(0, args, num_args);
    if(version_flag) {
	FUNC25(NULL);
	FUNC4(0);
    }

    if (config_file == NULL) {
	FUNC1(&config_file, "%d/kdc.conf", FUNC6(context));
	if (config_file == NULL)
	    FUNC3(1, "out of memory");
    }

    ret = FUNC18(config_file, &files);
    if (ret)
	FUNC11(context, 1, ret, "getting configuration files");

    ret = FUNC20(context, files);
    FUNC13(files);
    if (ret)
	FUNC11(context, 1, ret, "reading configuration files");

    if(realm_str)
	FUNC21(context, realm_str);

    FUNC17 (context, "kpasswdd", &log_facility);
    FUNC22(context, log_facility);

    if (port_str != NULL) {
	struct servent *s = FUNC26 (port_str, "udp");

	if (s != NULL)
	    port = s->s_port;
	else {
	    char *ptr;

	    port = FUNC30 (port_str, &ptr, 10);
	    if (port == 0 && ptr == port_str)
		FUNC12 (context, 1, "bad port `%s'", port_str);
	    port = FUNC7(port);
	}
    } else
	port = FUNC14 (context, "kpasswd", "udp", KPASSWD_PORT);

    ret = FUNC15(context, &hdb_kt_ops);
    if(ret)
	FUNC11(context, 1, ret, "krb5_kt_register");

    ret = FUNC16(context, keytab_str, &keytab);
    if(ret)
	FUNC11(context, 1, ret, "%s", keytab_str);

    FUNC9 (context, check_library, check_function);

    for (i = 0; i < policy_libraries.num_strings; i++) {
	ret = FUNC8(context,
						policy_libraries.strings[i]);
	if (ret)
	    FUNC11(context, 1, ret, "kadm5_add_passwd_quality_verifier");
    }
    ret = FUNC8(context, NULL);
    if (ret)
	FUNC11(context, 1, ret, "kadm5_add_passwd_quality_verifier");


    explicit_addresses.len = 0;

    if (addresses_str.num_strings) {
	int j;

	for (j = 0; j < addresses_str.num_strings; ++j)
	    FUNC0 (addresses_str.strings[j], j == 0);
	FUNC5 (&addresses_str);
    } else {
	char **foo = FUNC10 (context, NULL,
					      "kdc", "addresses", NULL);

	if (foo != NULL) {
	    FUNC0 (*foo++, TRUE);
	    while (*foo)
		FUNC0 (*foo++, FALSE);
	}
    }

#ifdef HAVE_SIGACTION
    {
	struct sigaction sa;

	sa.sa_flags = 0;
	sa.sa_handler = sigterm;
	sigemptyset(&sa.sa_mask);

	sigaction(SIGINT,  &sa, NULL);
	sigaction(SIGTERM, &sa, NULL);
    }
#else
    FUNC29(SIGINT,  sigterm);
    FUNC29(SIGTERM, sigterm);
#endif

    FUNC24(NULL);

    return FUNC2 (keytab, port);
}