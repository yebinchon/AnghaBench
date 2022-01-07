
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int krb5_socket_t ;
typedef int krb5_log_facility ;
typedef int krb5_keytab ;
typedef scalar_t__ krb5_error_code ;
typedef int __ss ;
struct TYPE_2__ {int num_strings; int ** strings; } ;


 scalar_t__ ENOTSOCK ;
 int STDIN_FILENO ;
 int args ;
 int asprintf (int **,char*,int ) ;
 int atoi (int *) ;
 int check_function ;
 int check_library ;
 int * config_file ;
 int context ;
 scalar_t__ debug_flag ;
 int errx (int,char*,...) ;
 int exit (int ) ;
 scalar_t__ getarg (int ,int ,int,char**,int*) ;
 int hdb_db_dir (int ) ;
 int hdb_kt_ops ;
 scalar_t__ help_flag ;
 int htons (int ) ;
 scalar_t__ kadm5_add_passwd_quality_verifier (int ,int *) ;
 int kadm5_setup_passwd_quality_check (int ,int ,int ) ;
 int kadmind_loop (int ,int ,int ) ;
 int keytab_str ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_free_config_files (char**) ;
 int krb5_getportbyname (int ,char*,char*,int) ;
 scalar_t__ krb5_init_context (int *) ;
 scalar_t__ krb5_kt_register (int ,int *) ;
 scalar_t__ krb5_kt_resolve (int ,int ,int *) ;
 scalar_t__ krb5_openlog (int ,char*,int **) ;
 scalar_t__ krb5_prepend_config_files_default (int *,char***) ;
 scalar_t__ krb5_set_config_files (int ,char**) ;
 int krb5_set_default_realm (int ,scalar_t__) ;
 scalar_t__ krb5_set_warn_dest (int ,int *) ;
 int mini_inetd (int,int *) ;
 int num_args ;
 int pidfile (int *) ;
 TYPE_1__ policy_libraries ;
 int * port_str ;
 int print_version (int *) ;
 scalar_t__ realm ;
 int rk_INVALID_SOCKET ;
 scalar_t__ rk_SOCK_ERRNO ;
 scalar_t__ roken_getsockname (int ,struct sockaddr*,int*) ;
 int setprogname (char*) ;
 int start_server (int ,int *) ;
 int usage (int) ;
 scalar_t__ version_flag ;
 int warnx (char*,char*) ;

int
main(int argc, char **argv)
{
    krb5_error_code ret;
    char **files;
    int optidx = 0;
    int i;
    krb5_log_facility *logfacility;
    krb5_keytab keytab;
    krb5_socket_t sfd = rk_INVALID_SOCKET;

    setprogname(argv[0]);

    ret = krb5_init_context(&context);
    if (ret)
 errx (1, "krb5_init_context failed: %d", ret);

    if (getarg(args, num_args, argc, argv, &optidx)) {
 warnx("error at argument `%s'", argv[optidx]);
 usage(1);
    }

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

    ret = krb5_openlog(context, "kadmind", &logfacility);
    if (ret)
 krb5_err(context, 1, ret, "krb5_openlog");
    ret = krb5_set_warn_dest(context, logfacility);
    if (ret)
 krb5_err(context, 1, ret, "krb5_set_warn_dest");

    ret = krb5_kt_register(context, &hdb_kt_ops);
    if(ret)
 krb5_err(context, 1, ret, "krb5_kt_register");

    ret = krb5_kt_resolve(context, keytab_str, &keytab);
    if(ret)
 krb5_err(context, 1, ret, "krb5_kt_resolve");

    kadm5_setup_passwd_quality_check (context, check_library, check_function);

    for (i = 0; i < policy_libraries.num_strings; i++) {
 ret = kadm5_add_passwd_quality_verifier(context,
      policy_libraries.strings[i]);
 if (ret)
     krb5_err(context, 1, ret, "kadm5_add_passwd_quality_verifier");
    }
    ret = kadm5_add_passwd_quality_verifier(context, ((void*)0));
    if (ret)
 krb5_err(context, 1, ret, "kadm5_add_passwd_quality_verifier");

    if(debug_flag) {
 int debug_port;

 if(port_str == ((void*)0))
     debug_port = krb5_getportbyname (context, "kerberos-adm",
          "tcp", 749);
 else
     debug_port = htons(atoi(port_str));
 mini_inetd(debug_port, &sfd);
    } else {




 struct sockaddr_storage __ss;
 struct sockaddr *sa = (struct sockaddr *)&__ss;
 socklen_t sa_size = sizeof(__ss);






 if(roken_getsockname(STDIN_FILENO, sa, &sa_size) < 0 &&
    rk_SOCK_ERRNO == ENOTSOCK) {
     pidfile(((void*)0));
     start_server(context, port_str);
 }

 sfd = STDIN_FILENO;
    }

    if(realm)
 krb5_set_default_realm(context, realm);

    kadmind_loop(context, keytab, sfd);

    return 0;
}
