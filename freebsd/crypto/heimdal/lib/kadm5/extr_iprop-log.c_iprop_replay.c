
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct replay_options {int realm_string; int config_file_string; } ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_8__ {TYPE_2__* db; } ;
typedef TYPE_1__ kadm5_server_context ;
struct TYPE_9__ {scalar_t__ (* hdb_close ) (int ,TYPE_2__*) ;scalar_t__ (* hdb_open ) (int ,TYPE_2__*,int,int) ;} ;


 int O_CREAT ;
 int O_RDWR ;
 int apply_entry ;
 int context ;
 TYPE_1__* get_kadmin_context (int ,int ) ;
 scalar_t__ kadm5_log_end (TYPE_1__*) ;
 scalar_t__ kadm5_log_foreach (TYPE_1__*,int ,struct replay_options*) ;
 scalar_t__ kadm5_log_init (TYPE_1__*) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_warn (int ,scalar_t__,char*) ;
 scalar_t__ stub1 (int ,TYPE_2__*,int,int) ;
 scalar_t__ stub2 (int ,TYPE_2__*) ;

int
iprop_replay(struct replay_options *opt, int argc, char **argv)
{
    kadm5_server_context *server_context;
    krb5_error_code ret;

    server_context = get_kadmin_context(opt->config_file_string,
     opt->realm_string);

    ret = server_context->db->hdb_open(context,
           server_context->db,
           O_RDWR | O_CREAT, 0600);
    if (ret)
 krb5_err (context, 1, ret, "db->open");

    ret = kadm5_log_init (server_context);
    if (ret)
 krb5_err (context, 1, ret, "kadm5_log_init");

    ret = kadm5_log_foreach (server_context, apply_entry, opt);
    if(ret)
 krb5_warn(context, ret, "kadm5_log_foreach");
    ret = kadm5_log_end (server_context);
    if (ret)
 krb5_warn(context, ret, "kadm5_log_end");
    ret = server_context->db->hdb_close (context, server_context->db);
    if (ret)
 krb5_err (context, 1, ret, "db->close");

    return 0;
}
