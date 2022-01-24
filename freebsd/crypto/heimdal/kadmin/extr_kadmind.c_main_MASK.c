#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  krb5_socket_t ;
typedef  int /*<<< orphan*/  krb5_log_facility ;
typedef  int /*<<< orphan*/  krb5_keytab ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  __ss ;
struct TYPE_2__ {int num_strings; int /*<<< orphan*/ ** strings; } ;

/* Variables and functions */
 scalar_t__ ENOTSOCK ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  check_function ; 
 int /*<<< orphan*/  check_library ; 
 int /*<<< orphan*/ * config_file ; 
 int /*<<< orphan*/  context ; 
 scalar_t__ debug_flag ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hdb_kt_ops ; 
 scalar_t__ help_flag ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  keytab_str ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC11 (char**) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*,char*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,char***) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  num_args ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 TYPE_1__ policy_libraries ; 
 int /*<<< orphan*/ * port_str ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ realm ; 
 int /*<<< orphan*/  rk_INVALID_SOCKET ; 
 scalar_t__ rk_SOCK_ERRNO ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 scalar_t__ version_flag ; 
 int /*<<< orphan*/  FUNC28 (char*,char*) ; 

int
FUNC29(int argc, char **argv)
{
    krb5_error_code ret;
    char **files;
    int optidx = 0;
    int i;
    krb5_log_facility *logfacility;
    krb5_keytab keytab;
    krb5_socket_t sfd = rk_INVALID_SOCKET;

    FUNC25(argv[0]);

    ret = FUNC13(&context);
    if (ret)
	FUNC2 (1, "krb5_init_context failed: %d", ret);

    if (FUNC4(args, num_args, argc, argv, &optidx)) {
	FUNC28("error at argument `%s'", argv[optidx]);
	FUNC27(1);
    }

    if (help_flag)
	FUNC27 (0);

    if (version_flag) {
	FUNC23(NULL);
	FUNC3(0);
    }

    argc -= optidx;
    argv += optidx;

    if (config_file == NULL) {
	FUNC0(&config_file, "%d/kdc.conf", FUNC5(context));
	if (config_file == NULL)
	    FUNC2(1, "out of memory");
    }

    ret = FUNC17(config_file, &files);
    if (ret)
	FUNC10(context, 1, ret, "getting configuration files");

    ret = FUNC18(context, files);
    FUNC11(files);
    if(ret)
	FUNC10(context, 1, ret, "reading configuration files");

    ret = FUNC16(context, "kadmind", &logfacility);
    if (ret)
	FUNC10(context, 1, ret, "krb5_openlog");
    ret = FUNC20(context, logfacility);
    if (ret)
	FUNC10(context, 1, ret, "krb5_set_warn_dest");

    ret = FUNC14(context, &hdb_kt_ops);
    if(ret)
	FUNC10(context, 1, ret, "krb5_kt_register");

    ret = FUNC15(context, keytab_str, &keytab);
    if(ret)
	FUNC10(context, 1, ret, "krb5_kt_resolve");

    FUNC8 (context, check_library, check_function);

    for (i = 0; i < policy_libraries.num_strings; i++) {
	ret = FUNC7(context,
						policy_libraries.strings[i]);
	if (ret)
	    FUNC10(context, 1, ret, "kadm5_add_passwd_quality_verifier");
    }
    ret = FUNC7(context, NULL);
    if (ret)
	FUNC10(context, 1, ret, "kadm5_add_passwd_quality_verifier");

    if(debug_flag) {
	int debug_port;

	if(port_str == NULL)
	    debug_port = FUNC12 (context, "kerberos-adm",
					     "tcp", 749);
	else
	    debug_port = FUNC6(FUNC1(port_str));
	FUNC21(debug_port, &sfd);
    } else {
#ifdef _WIN32
	pidfile(NULL);
	start_server(context, port_str);
#else
	struct sockaddr_storage __ss;
	struct sockaddr *sa = (struct sockaddr *)&__ss;
	socklen_t sa_size = sizeof(__ss);

	/*
	 * Check if we are running inside inetd or not, if not, start
	 * our own server.
	 */

	if(FUNC24(STDIN_FILENO, sa, &sa_size) < 0 &&
	   rk_SOCK_ERRNO == ENOTSOCK) {
	    FUNC22(NULL);
	    FUNC26(context, port_str);
	}
#endif /* _WIN32 */
	sfd = STDIN_FILENO;
    }

    if(realm)
	FUNC19(context, realm); /* XXX */

    FUNC9(context, keytab, sfd);

    return 0;
}