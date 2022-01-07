
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int require_preauth; } ;
typedef TYPE_1__ krb5_kdc_configuration ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
struct TYPE_12__ {scalar_t__ len; } ;
struct TYPE_11__ {int num_strings; int * strings; } ;


 int DETACH_IS_DEFAULT ;
 int ETYPE_DES_CBC_CRC ;
 int ETYPE_DES_CBC_MD4 ;
 int ETYPE_DES_CBC_MD5 ;
 int ETYPE_DES_CBC_NONE ;
 int ETYPE_DES_CFB64_NONE ;
 int ETYPE_DES_PCBC_NONE ;
 int FALSE ;
 int TRUE ;
 int add_one_address (int ,int ,int) ;
 TYPE_6__ addresses_str ;
 int args ;
 int asprintf (int **,char*,int ) ;
 scalar_t__ builtin_hdb_flag ;
 int * config_file ;
 int detach_from_console ;
 int disable_des ;
 int enable_http ;
 int errx (int,char*) ;
 int exit (int ) ;
 TYPE_7__ explicit_addresses ;
 int free (char*) ;
 int free_getarg_strings (TYPE_6__*) ;
 scalar_t__ getarg (int ,int ,int,char**,int*) ;
 int hdb_db_dir (int ) ;
 scalar_t__ hdb_list_builtin (int ,char**) ;
 scalar_t__ help_flag ;
 int kdc_openlog (int ,char*,TYPE_1__*) ;
 int krb5_config_get_bool (int ,int *,char*,char*,int *) ;
 int krb5_config_get_bool_default (int ,int *,int,char*,char*,int *) ;
 void* krb5_config_get_string (int ,int *,char*,char*,int *) ;
 char** krb5_config_get_strings (int ,int *,char*,char*,int *) ;
 int krb5_enctype_disable (int ,int ) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_errx (int ,int,char*) ;
 int krb5_free_config_files (char**) ;
 scalar_t__ krb5_kdc_get_config (int ,TYPE_1__**) ;
 int krb5_kdc_pkinit_config (int ,TYPE_1__*) ;
 scalar_t__ krb5_kdc_set_dbinfo (int ,TYPE_1__*) ;
 int krb5_kdc_windc_init (int ) ;
 scalar_t__ krb5_prepend_config_files_default (int *,char***) ;
 scalar_t__ krb5_set_config_files (int ,char**) ;
 char const* max_request_str ;
 int max_request_tcp ;
 int max_request_udp ;
 int num_args ;
 int parse_bytes (char const*,int *) ;
 char* port_str ;
 int print_version (int *) ;
 int printf (char*,char*) ;
 int * request_log ;
 int require_preauth ;
 char* strdup (char const*) ;
 int usage (int) ;
 scalar_t__ version_flag ;
 int warnx (char*,char*) ;

krb5_kdc_configuration *
configure(krb5_context context, int argc, char **argv)
{
    krb5_kdc_configuration *config;
    krb5_error_code ret;
    int optidx = 0;
    const char *p;

    while(getarg(args, num_args, argc, argv, &optidx))
 warnx("error at argument `%s'", argv[optidx]);

    if(help_flag)
 usage (0);

    if (version_flag) {
 print_version(((void*)0));
 exit(0);
    }

    if (builtin_hdb_flag) {
 char *list;
 ret = hdb_list_builtin(context, &list);
 if (ret)
     krb5_err(context, 1, ret, "listing builtin hdb backends");
 printf("builtin hdb backends: %s\n", list);
 free(list);
 exit(0);
    }

    argc -= optidx;
    argv += optidx;

    if (argc != 0)
 usage(1);

    {
 char **files;

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
    }

    ret = krb5_kdc_get_config(context, &config);
    if (ret)
 krb5_err(context, 1, ret, "krb5_kdc_default_config");

    kdc_openlog(context, "kdc", config);

    ret = krb5_kdc_set_dbinfo(context, config);
    if (ret)
 krb5_err(context, 1, ret, "krb5_kdc_set_dbinfo");

    if(max_request_str)
 max_request_tcp = max_request_udp = parse_bytes(max_request_str, ((void*)0));

    if(max_request_tcp == 0){
 p = krb5_config_get_string (context,
        ((void*)0),
        "kdc",
        "max-request",
        ((void*)0));
 if(p)
     max_request_tcp = max_request_udp = parse_bytes(p, ((void*)0));
    }

    if(require_preauth != -1)
 config->require_preauth = require_preauth;

    if(port_str == ((void*)0)){
 p = krb5_config_get_string(context, ((void*)0), "kdc", "ports", ((void*)0));
 if (p != ((void*)0))
     port_str = strdup(p);
    }

    explicit_addresses.len = 0;

    if (addresses_str.num_strings) {
 int i;

 for (i = 0; i < addresses_str.num_strings; ++i)
     add_one_address (context, addresses_str.strings[i], i == 0);
 free_getarg_strings (&addresses_str);
    } else {
 char **foo = krb5_config_get_strings (context, ((void*)0),
           "kdc", "addresses", ((void*)0));

 if (foo != ((void*)0)) {
     add_one_address (context, *foo++, TRUE);
     while (*foo)
  add_one_address (context, *foo++, FALSE);
 }
    }

    if(enable_http == -1)
 enable_http = krb5_config_get_bool(context, ((void*)0), "kdc",
        "enable-http", ((void*)0));

    if(request_log == ((void*)0))
 request_log = krb5_config_get_string(context, ((void*)0),
          "kdc",
          "kdc-request-log",
          ((void*)0));

    if (krb5_config_get_string(context, ((void*)0), "kdc",
          "enforce-transited-policy", ((void*)0)))
 krb5_errx(context, 1, "enforce-transited-policy deprecated, "
    "use [kdc]transited-policy instead");
    if(max_request_tcp == 0)
 max_request_tcp = 64 * 1024;
    if(max_request_udp == 0)
 max_request_udp = 64 * 1024;

    if (port_str == ((void*)0))
 port_str = "+";

    if(disable_des == -1)
 disable_des = krb5_config_get_bool_default(context, ((void*)0),
         FALSE,
         "kdc",
         "disable-des", ((void*)0));
    if(disable_des) {
 krb5_enctype_disable(context, ETYPE_DES_CBC_CRC);
 krb5_enctype_disable(context, ETYPE_DES_CBC_MD4);
 krb5_enctype_disable(context, ETYPE_DES_CBC_MD5);
 krb5_enctype_disable(context, ETYPE_DES_CBC_NONE);
 krb5_enctype_disable(context, ETYPE_DES_CFB64_NONE);
 krb5_enctype_disable(context, ETYPE_DES_PCBC_NONE);
    }

    krb5_kdc_windc_init(context);

    krb5_kdc_pkinit_config(context, config);

    return config;
}
