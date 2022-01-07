
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_error_code ;


 int DETACH_IS_DEFAULT ;
 int * _PATH_KCM_CONF ;
 int args ;
 scalar_t__ ccache_init_system () ;
 int * config_file ;
 int detach_from_console ;
 int exit (int ) ;
 scalar_t__ getarg (int ,int ,int,char**,int*) ;
 scalar_t__ help_flag ;
 int kcm_context ;
 int kcm_openlog () ;
 int * kcm_system_config_get_string (char*) ;
 int krb5_config_get_bool_default (int ,int *,int ,char*,char*,int *) ;
 char* krb5_config_get_string (int ,int *,char*,char*,int *) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_free_config_files (char**) ;
 scalar_t__ krb5_prepend_config_files_default (int *,char***) ;
 scalar_t__ krb5_set_config_files (int ,char**) ;
 int max_request ;
 char const* max_request_str ;
 int num_args ;
 int parse_bytes (char const*,int *) ;
 int print_version (int *) ;
 int * system_principal ;
 int usage (int) ;
 scalar_t__ version_flag ;
 int warnx (char*,char*) ;

void
kcm_configure(int argc, char **argv)
{
    krb5_error_code ret;
    int optind = 0;
    const char *p;

    while(getarg(args, num_args, argc, argv, &optind))
 warnx("error at argument `%s'", argv[optind]);

    if(help_flag)
 usage (0);

    if (version_flag) {
 print_version(((void*)0));
 exit(0);
    }

    argc -= optind;
    argv += optind;

    if (argc != 0)
 usage(1);

    {
 char **files;

 if(config_file == ((void*)0))
     config_file = _PATH_KCM_CONF;

 ret = krb5_prepend_config_files_default(config_file, &files);
 if (ret)
     krb5_err(kcm_context, 1, ret, "getting configuration files");

 ret = krb5_set_config_files(kcm_context, files);
 krb5_free_config_files(files);
 if(ret)
     krb5_err(kcm_context, 1, ret, "reading configuration files");
    }

    if(max_request_str)
 max_request = parse_bytes(max_request_str, ((void*)0));

    if(max_request == 0){
 p = krb5_config_get_string (kcm_context,
        ((void*)0),
        "kcm",
        "max-request",
        ((void*)0));
 if(p)
     max_request = parse_bytes(p, ((void*)0));
    }

    if (system_principal == ((void*)0)) {
 system_principal = kcm_system_config_get_string("principal");
    }

    if (system_principal != ((void*)0)) {
 ret = ccache_init_system();
 if (ret)
     krb5_err(kcm_context, 1, ret, "initializing system ccache");
    }
    kcm_openlog();
    if(max_request == 0)
 max_request = 64 * 1024;
}
