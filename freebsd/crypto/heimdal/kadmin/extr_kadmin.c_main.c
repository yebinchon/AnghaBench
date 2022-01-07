
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int krb5_error_code ;
struct TYPE_8__ {int mask; scalar_t__ stash_file; int kadmind_port; scalar_t__ admin_server; scalar_t__ realm; } ;
typedef TYPE_1__ kadm5_config_params ;
typedef int conf ;
struct TYPE_9__ {int num_strings; int ** strings; } ;


 int KADM5_ADMIN_SERVICE ;
 int KADM5_CONFIG_ADMIN_SERVER ;
 int KADM5_CONFIG_KADMIND_PORT ;
 int KADM5_CONFIG_REALM ;
 int KADM5_CONFIG_STASH_FILE ;
 int SIGINT ;
 int SIG_IGN ;
 scalar_t__ ad_flag ;
 scalar_t__ admin_server ;
 int args ;
 int asprintf (int **,char*,int ) ;
 int check_function ;
 int check_library ;
 int * client_name ;
 int commands ;
 int * config_file ;
 int context ;
 int errx (int,char*,...) ;
 int exit (int ) ;
 int exit_seen ;
 scalar_t__ getarg (int ,int ,int,char**,int*) ;
 int hdb_db_dir (int ) ;
 scalar_t__ help_flag ;
 int htons (scalar_t__) ;
 int kadm5_ad_init_with_password_ctx (int ,int *,int *,int ,TYPE_1__*,int ,int ,int *) ;
 int kadm5_add_passwd_quality_verifier (int ,int *) ;
 int kadm5_c_init_with_password_ctx (int ,int *,int *,int ,TYPE_1__*,int ,int ,int *) ;
 int kadm5_c_init_with_skey_ctx (int ,int *,scalar_t__,int ,TYPE_1__*,int ,int ,int *) ;
 int kadm5_destroy (int ) ;
 int kadm5_s_init_with_password_ctx (int ,int ,int *,int ,TYPE_1__*,int ,int ,int *) ;
 int kadm5_setup_passwd_quality_check (int ,int ,int ) ;
 int kadm_handle ;
 scalar_t__ keyfile ;
 scalar_t__ keytab ;
 int krb5_err (int ,int,int,char*) ;
 int krb5_errx (int ,int,char*) ;
 int krb5_free_config_files (char**) ;
 int krb5_free_context (int ) ;
 int krb5_init_context (int *) ;
 int krb5_prepend_config_files_default (int *,char***) ;
 int krb5_set_config_files (int ,char**) ;
 int krb5_set_default_realm (int ,scalar_t__) ;
 int krb5_warnx (int ,char*,char*) ;
 scalar_t__ local_flag ;
 int memset (TYPE_1__*,int ,int) ;
 int num_args ;
 TYPE_2__ policy_libraries ;
 int print_version (int *) ;
 scalar_t__ realm ;
 scalar_t__ server_port ;
 int setprogname (char*) ;
 int signal (int ,int ) ;
 int sl_command (int ,int,char**) ;
 int sl_command_loop (int ,char*,int *) ;
 int usage (int) ;
 scalar_t__ version_flag ;

int
main(int argc, char **argv)
{
    krb5_error_code ret;
    char **files;
    kadm5_config_params conf;
    int optidx = 0;
    int exit_status = 0;

    setprogname(argv[0]);

    ret = krb5_init_context(&context);
    if (ret)
 errx (1, "krb5_init_context failed: %d", ret);

    if(getarg(args, num_args, argc, argv, &optidx))
 usage(1);

    if (help_flag)
 usage (0);

    if (version_flag) {
 print_version(((void*)0));
 exit(0);
    }

    argc -= optidx;
    argv += optidx;

    if (config_file == ((void*)0)) {
 asprintf(&config_file, "%s/kdc.conf", hdb_db_dir(context));
 if (config_file == ((void*)0))
     errx(1, "out of memory");
    }

    ret = krb5_prepend_config_files_default(config_file, &files);
    if (ret)
 krb5_err(context, 1, ret, "getting configuration files");

    ret = krb5_set_config_files(context, files);
    krb5_free_config_files(files);
    if(ret)
 krb5_err(context, 1, ret, "reading configuration files");

    memset(&conf, 0, sizeof(conf));
    if(realm) {
 krb5_set_default_realm(context, realm);

 conf.realm = realm;
 conf.mask |= KADM5_CONFIG_REALM;
    }

    if (admin_server) {
 conf.admin_server = admin_server;
 conf.mask |= KADM5_CONFIG_ADMIN_SERVER;
    }

    if (server_port) {
 conf.kadmind_port = htons(server_port);
 conf.mask |= KADM5_CONFIG_KADMIND_PORT;
    }

    if (keyfile) {
 conf.stash_file = keyfile;
 conf.mask |= KADM5_CONFIG_STASH_FILE;
    }

    if(local_flag) {
 int i;

 kadm5_setup_passwd_quality_check (context,
       check_library, check_function);

 for (i = 0; i < policy_libraries.num_strings; i++) {
     ret = kadm5_add_passwd_quality_verifier(context,
          policy_libraries.strings[i]);
     if (ret)
  krb5_err(context, 1, ret, "kadm5_add_passwd_quality_verifier");
 }
 ret = kadm5_add_passwd_quality_verifier(context, ((void*)0));
 if (ret)
     krb5_err(context, 1, ret, "kadm5_add_passwd_quality_verifier");

 ret = kadm5_s_init_with_password_ctx(context,
          KADM5_ADMIN_SERVICE,
          ((void*)0),
          KADM5_ADMIN_SERVICE,
          &conf, 0, 0,
          &kadm_handle);
    } else if (ad_flag) {
 if (client_name == ((void*)0))
     krb5_errx(context, 1, "keytab mode require principal name");
 ret = kadm5_ad_init_with_password_ctx(context,
           client_name,
           ((void*)0),
           KADM5_ADMIN_SERVICE,
           &conf, 0, 0,
           &kadm_handle);
    } else if (keytab) {
 if (client_name == ((void*)0))
     krb5_errx(context, 1, "keytab mode require principal name");
        ret = kadm5_c_init_with_skey_ctx(context,
      client_name,
      keytab,
      KADM5_ADMIN_SERVICE,
                                         &conf, 0, 0,
                                         &kadm_handle);
    } else
 ret = kadm5_c_init_with_password_ctx(context,
          client_name,
          ((void*)0),
          KADM5_ADMIN_SERVICE,
          &conf, 0, 0,
          &kadm_handle);

    if(ret)
 krb5_err(context, 1, ret, "kadm5_init_with_password");

    signal(SIGINT, SIG_IGN);




    if (argc != 0) {
 ret = sl_command (commands, argc, argv);
 if(ret == -1)
     krb5_warnx (context, "unrecognized command: %s", argv[0]);
 else if (ret == -2)
     ret = 0;
 if(ret != 0)
     exit_status = 1;
    } else {
 while(!exit_seen) {
     ret = sl_command_loop(commands, "kadmin> ", ((void*)0));
     if (ret == -2)
  exit_seen = 1;
     else if (ret != 0)
  exit_status = 1;
 }
    }

    kadm5_destroy(kadm_handle);
    krb5_free_context(context);
    return exit_status;
}
