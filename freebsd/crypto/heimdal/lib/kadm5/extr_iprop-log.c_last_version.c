
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct last_version_options {int realm_string; int config_file_string; } ;
typedef scalar_t__ krb5_error_code ;
typedef int kadm5_server_context ;


 int context ;
 int * get_kadmin_context (int ,int ) ;
 scalar_t__ kadm5_log_end (int *) ;
 scalar_t__ kadm5_log_get_version (int *,scalar_t__*) ;
 scalar_t__ kadm5_log_init (int *) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_warn (int ,scalar_t__,char*) ;
 int printf (char*,unsigned long) ;

int
last_version(struct last_version_options *opt, int argc, char **argv)
{
    kadm5_server_context *server_context;
    krb5_error_code ret;
    uint32_t version;

    server_context = get_kadmin_context(opt->config_file_string,
     opt->realm_string);

    ret = kadm5_log_init (server_context);
    if (ret)
 krb5_err (context, 1, ret, "kadm5_log_init");

    ret = kadm5_log_get_version (server_context, &version);
    if (ret)
 krb5_err (context, 1, ret, "kadm5_log_get_version");

    ret = kadm5_log_end (server_context);
    if (ret)
 krb5_warn(context, ret, "kadm5_log_end");

    printf("version: %lu\n", (unsigned long)version);

    return 0;
}
