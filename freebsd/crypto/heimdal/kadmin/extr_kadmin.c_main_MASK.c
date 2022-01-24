#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int krb5_error_code ;
struct TYPE_8__ {int /*<<< orphan*/  mask; scalar_t__ stash_file; int /*<<< orphan*/  kadmind_port; scalar_t__ admin_server; scalar_t__ realm; } ;
typedef  TYPE_1__ kadm5_config_params ;
typedef  int /*<<< orphan*/  conf ;
struct TYPE_9__ {int num_strings; int /*<<< orphan*/ ** strings; } ;

/* Variables and functions */
 int /*<<< orphan*/  KADM5_ADMIN_SERVICE ; 
 int /*<<< orphan*/  KADM5_CONFIG_ADMIN_SERVER ; 
 int /*<<< orphan*/  KADM5_CONFIG_KADMIND_PORT ; 
 int /*<<< orphan*/  KADM5_CONFIG_REALM ; 
 int /*<<< orphan*/  KADM5_CONFIG_STASH_FILE ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIG_IGN ; 
 scalar_t__ ad_flag ; 
 scalar_t__ admin_server ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  check_function ; 
 int /*<<< orphan*/  check_library ; 
 int /*<<< orphan*/ * client_name ; 
 int /*<<< orphan*/  commands ; 
 int /*<<< orphan*/ * config_file ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int exit_seen ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ help_flag ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kadm_handle ; 
 scalar_t__ keyfile ; 
 scalar_t__ keytab ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC15 (char**) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *,char***) ; 
 int FUNC19 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ local_flag ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  num_args ; 
 TYPE_2__ policy_libraries ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ realm ; 
 scalar_t__ server_port ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC26 (int /*<<< orphan*/ ,int,char**) ; 
 int FUNC27 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int) ; 
 scalar_t__ version_flag ; 

int
FUNC29(int argc, char **argv)
{
    krb5_error_code ret;
    char **files;
    kadm5_config_params conf;
    int optidx = 0;
    int exit_status = 0;

    FUNC24(argv[0]);

    ret = FUNC17(&context);
    if (ret)
	FUNC1 (1, "krb5_init_context failed: %d", ret);

    if(FUNC3(args, num_args, argc, argv, &optidx))
	FUNC28(1);

    if (help_flag)
	FUNC28 (0);

    if (version_flag) {
	FUNC23(NULL);
	FUNC2(0);
    }

    argc -= optidx;
    argv += optidx;

    if (config_file == NULL) {
	FUNC0(&config_file, "%d/kdc.conf", FUNC4(context));
	if (config_file == NULL)
	    FUNC1(1, "out of memory");
    }

    ret = FUNC18(config_file, &files);
    if (ret)
	FUNC13(context, 1, ret, "getting configuration files");

    ret = FUNC19(context, files);
    FUNC15(files);
    if(ret)
	FUNC13(context, 1, ret, "reading configuration files");

    FUNC22(&conf, 0, sizeof(conf));
    if(realm) {
	FUNC20(context, realm); /* XXX should be fixed
						   some other way */
	conf.realm = realm;
	conf.mask |= KADM5_CONFIG_REALM;
    }

    if (admin_server) {
	conf.admin_server = admin_server;
	conf.mask |= KADM5_CONFIG_ADMIN_SERVER;
    }

    if (server_port) {
	conf.kadmind_port = FUNC5(server_port);
	conf.mask |= KADM5_CONFIG_KADMIND_PORT;
    }

    if (keyfile) {
	conf.stash_file = keyfile;
	conf.mask |= KADM5_CONFIG_STASH_FILE;
    }

    if(local_flag) {
	int i;

	FUNC12 (context,
					  check_library, check_function);

	for (i = 0; i < policy_libraries.num_strings; i++) {
	    ret = FUNC7(context,
						    policy_libraries.strings[i]);
	    if (ret)
		FUNC13(context, 1, ret, "kadm5_add_passwd_quality_verifier");
	}
	ret = FUNC7(context, NULL);
	if (ret)
	    FUNC13(context, 1, ret, "kadm5_add_passwd_quality_verifier");

	ret = FUNC11(context,
					     KADM5_ADMIN_SERVICE,
					     NULL,
					     KADM5_ADMIN_SERVICE,
					     &conf, 0, 0,
					     &kadm_handle);
    } else if (ad_flag) {
	if (client_name == NULL)
	    FUNC14(context, 1, "keytab mode require principal name");
	ret = FUNC6(context,
					      client_name,
					      NULL,
					      KADM5_ADMIN_SERVICE,
					      &conf, 0, 0,
					      &kadm_handle);
    } else if (keytab) {
	if (client_name == NULL)
	    FUNC14(context, 1, "keytab mode require principal name");
        ret = FUNC9(context,
					 client_name,
					 keytab,
					 KADM5_ADMIN_SERVICE,
                                         &conf, 0, 0,
                                         &kadm_handle);
    } else
	ret = FUNC8(context,
					     client_name,
					     NULL,
					     KADM5_ADMIN_SERVICE,
					     &conf, 0, 0,
					     &kadm_handle);

    if(ret)
	FUNC13(context, 1, ret, "kadm5_init_with_password");

    FUNC25(SIGINT, SIG_IGN); /* ignore signals for now, the sl command
                                parser will handle SIGINT its own way;
                                we should really take care of this in
                                each function, f.i `get' might be
                                interruptable, but not `create' */
    if (argc != 0) {
	ret = FUNC26 (commands, argc, argv);
	if(ret == -1)
	    FUNC21 (context, "unrecognized command: %s", argv[0]);
	else if (ret == -2)
	    ret = 0;
	if(ret != 0)
	    exit_status = 1;
    } else {
	while(!exit_seen) {
	    ret = FUNC27(commands, "kadmin> ", NULL);
	    if (ret == -2)
		exit_seen = 1;
	    else if (ret != 0)
		exit_status = 1;
	}
    }

    FUNC10(kadm_handle);
    FUNC16(context);
    return exit_status;
}