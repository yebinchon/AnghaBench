
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct truncate_options {int realm_string; int config_file_string; } ;
typedef scalar_t__ krb5_error_code ;
typedef int kadm5_server_context ;


 int context ;
 int * get_kadmin_context (int ,int ) ;
 scalar_t__ kadm5_log_truncate (int *) ;
 int krb5_err (int ,int,scalar_t__,char*) ;

int
iprop_truncate(struct truncate_options *opt, int argc, char **argv)
{
    kadm5_server_context *server_context;
    krb5_error_code ret;

    server_context = get_kadmin_context(opt->config_file_string,
     opt->realm_string);

    ret = kadm5_log_truncate (server_context);
    if (ret)
 krb5_err (context, 1, ret, "kadm5_log_truncate");

    return 0;
}
