
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sigaction {int sa_mask; int sa_handler; scalar_t__ sa_flags; } ;
struct servent {int s_port; } ;
typedef int krb5_keytab ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_7__ {scalar_t__ len; } ;
struct TYPE_6__ {int num_strings; int * strings; } ;
struct TYPE_5__ {int num_strings; int ** strings; } ;


 int FALSE ;
 int KPASSWD_PORT ;
 int SIGINT ;
 int SIGTERM ;
 int TRUE ;
 int add_one_address (int ,int) ;
 TYPE_2__ addresses_str ;
 int args ;
 int asprintf (int **,char*,int ) ;
 int check_function ;
 int check_library ;
 int * config_file ;
 int context ;
 int doit (int ,int) ;
 int errx (int,char*) ;
 int exit (int ) ;
 TYPE_3__ explicit_addresses ;
 int free_getarg_strings (TYPE_2__*) ;
 int hdb_db_dir (int ) ;
 int hdb_kt_ops ;
 scalar_t__ help_flag ;
 int htons (int) ;
 scalar_t__ kadm5_add_passwd_quality_verifier (int ,int *) ;
 int kadm5_setup_passwd_quality_check (int ,int ,int ) ;
 int keytab_str ;
 char** krb5_config_get_strings (int ,int *,char*,char*,int *) ;
 int krb5_err (int ,int,scalar_t__,char*,...) ;
 int krb5_errx (int ,int,char*,char*) ;
 int krb5_free_config_files (char**) ;
 int krb5_getportbyname (int ,char*,char*,int ) ;
 scalar_t__ krb5_kt_register (int ,int *) ;
 scalar_t__ krb5_kt_resolve (int ,int ,int *) ;
 int krb5_openlog (int ,char*,int *) ;
 scalar_t__ krb5_prepend_config_files_default (int *,char***) ;
 int krb5_program_setup (int *,int,char**,int ,int ,int *) ;
 scalar_t__ krb5_set_config_files (int ,char**) ;
 int krb5_set_default_realm (int ,scalar_t__) ;
 int krb5_set_warn_dest (int ,int ) ;
 int krb5_std_usage (int ,int ,int ) ;
 int log_facility ;
 int num_args ;
 int pidfile (int *) ;
 TYPE_1__ policy_libraries ;
 char* port_str ;
 int print_version (int *) ;
 scalar_t__ realm_str ;
 struct servent* roken_getservbyname (char*,char*) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int signal (int ,int ) ;
 int sigterm ;
 int strtol (char*,char**,int) ;
 scalar_t__ version_flag ;

int
main (int argc, char **argv)
{
    krb5_keytab keytab;
    krb5_error_code ret;
    char **files;
    int port, i;

    krb5_program_setup(&context, argc, argv, args, num_args, ((void*)0));

    if(help_flag)
 krb5_std_usage(0, args, num_args);
    if(version_flag) {
 print_version(((void*)0));
 exit(0);
    }

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
    if (ret)
 krb5_err(context, 1, ret, "reading configuration files");

    if(realm_str)
 krb5_set_default_realm(context, realm_str);

    krb5_openlog (context, "kpasswdd", &log_facility);
    krb5_set_warn_dest(context, log_facility);

    if (port_str != ((void*)0)) {
 struct servent *s = roken_getservbyname (port_str, "udp");

 if (s != ((void*)0))
     port = s->s_port;
 else {
     char *ptr;

     port = strtol (port_str, &ptr, 10);
     if (port == 0 && ptr == port_str)
  krb5_errx (context, 1, "bad port `%s'", port_str);
     port = htons(port);
 }
    } else
 port = krb5_getportbyname (context, "kpasswd", "udp", KPASSWD_PORT);

    ret = krb5_kt_register(context, &hdb_kt_ops);
    if(ret)
 krb5_err(context, 1, ret, "krb5_kt_register");

    ret = krb5_kt_resolve(context, keytab_str, &keytab);
    if(ret)
 krb5_err(context, 1, ret, "%s", keytab_str);

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


    explicit_addresses.len = 0;

    if (addresses_str.num_strings) {
 int j;

 for (j = 0; j < addresses_str.num_strings; ++j)
     add_one_address (addresses_str.strings[j], j == 0);
 free_getarg_strings (&addresses_str);
    } else {
 char **foo = krb5_config_get_strings (context, ((void*)0),
           "kdc", "addresses", ((void*)0));

 if (foo != ((void*)0)) {
     add_one_address (*foo++, TRUE);
     while (*foo)
  add_one_address (*foo++, FALSE);
 }
    }
    signal(SIGINT, sigterm);
    signal(SIGTERM, sigterm);


    pidfile(((void*)0));

    return doit (keytab, port);
}
