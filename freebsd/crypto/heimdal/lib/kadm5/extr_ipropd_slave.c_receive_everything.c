
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int krb5_storage ;
typedef int krb5_error_code ;
struct TYPE_27__ {char* data; scalar_t__ length; } ;
typedef TYPE_3__ krb5_data ;
typedef int krb5_context ;
typedef int krb5_auth_context ;
struct TYPE_25__ {int stash_file; } ;
struct TYPE_28__ {TYPE_2__* db; int context; TYPE_1__ config; } ;
typedef TYPE_4__ kadm5_server_context ;
typedef scalar_t__ int32_t ;
struct TYPE_29__ {int entry; } ;
typedef TYPE_5__ hdb_entry_ex ;
typedef int entry ;
struct TYPE_30__ {int (* hdb_open ) (int ,TYPE_6__*,int,int) ;int (* hdb_store ) (int ,TYPE_6__*,int ,TYPE_5__*) ;int (* hdb_rename ) (int ,TYPE_6__*,int ) ;int (* hdb_close ) (int ,TYPE_6__*) ;int (* hdb_destroy ) (int ,TYPE_6__*) ;} ;
struct TYPE_26__ {int hdb_name; } ;
typedef TYPE_6__ HDB ;


 scalar_t__ NOW_YOU_HAVE ;
 scalar_t__ ONE_PRINC ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int asprintf (char**,char*,int ) ;
 int free (char*) ;
 int hdb_create (int ,TYPE_6__**,char*) ;
 int hdb_free_entry (int ,TYPE_5__*) ;
 int hdb_set_master_keyfile (int ,TYPE_6__*,int ) ;
 int hdb_value2entry (int ,TYPE_3__*,int *) ;
 int kadm5_log_nop (TYPE_4__*) ;
 int kadm5_log_reinit (TYPE_4__*) ;
 int kadm5_log_set_version (TYPE_4__*,scalar_t__) ;
 int krb5_data_free (TYPE_3__*) ;
 int krb5_err (int ,int,int,char*) ;
 int krb5_errx (int ,int,char*,...) ;
 int krb5_read_priv_message (int ,int ,int*,TYPE_3__*) ;
 int krb5_ret_int32 (int *,scalar_t__*) ;
 int krb5_storage_free (int *) ;
 int * krb5_storage_from_data (TYPE_3__*) ;
 int krb5_warn (int ,int,char*) ;
 int krb5_warnx (int ,char*,...) ;
 int memset (TYPE_5__*,int ,int) ;
 int stub1 (int ,TYPE_6__*,int,int) ;
 int stub2 (int ,TYPE_6__*,int ,TYPE_5__*) ;
 int stub3 (int ,TYPE_6__*,int ) ;
 int stub4 (int ,TYPE_6__*) ;
 int stub5 (int ,TYPE_6__*) ;

__attribute__((used)) static krb5_error_code
receive_everything (krb5_context context, int fd,
      kadm5_server_context *server_context,
      krb5_auth_context auth_context)
{
    int ret;
    krb5_data data;
    int32_t vno = 0;
    int32_t opcode;
    krb5_storage *sp;

    char *dbname;
    HDB *mydb;

    krb5_warnx(context, "receive complete database");

    asprintf(&dbname, "%s-NEW", server_context->db->hdb_name);
    ret = hdb_create(context, &mydb, dbname);
    if(ret)
 krb5_err(context,1, ret, "hdb_create");
    free(dbname);

    ret = hdb_set_master_keyfile (context,
      mydb, server_context->config.stash_file);
    if(ret)
 krb5_err(context,1, ret, "hdb_set_master_keyfile");



    ret = mydb->hdb_open(context, mydb, O_RDWR | O_CREAT | O_TRUNC, 0600);
    if (ret)
 krb5_err (context, 1, ret, "db->open");

    sp = ((void*)0);
    do {
 ret = krb5_read_priv_message(context, auth_context, &fd, &data);

 if (ret) {
     krb5_warn (context, ret, "krb5_read_priv_message");
     goto cleanup;
 }

 sp = krb5_storage_from_data (&data);
 if (sp == ((void*)0))
     krb5_errx (context, 1, "krb5_storage_from_data");
 krb5_ret_int32 (sp, &opcode);
 if (opcode == ONE_PRINC) {
     krb5_data fake_data;
     hdb_entry_ex entry;

     krb5_storage_free(sp);

     fake_data.data = (char *)data.data + 4;
     fake_data.length = data.length - 4;

     memset(&entry, 0, sizeof(entry));

     ret = hdb_value2entry (context, &fake_data, &entry.entry);
     if (ret)
  krb5_err (context, 1, ret, "hdb_value2entry");
     ret = mydb->hdb_store(server_context->context,
      mydb,
      0, &entry);
     if (ret)
  krb5_err (context, 1, ret, "hdb_store");

     hdb_free_entry (context, &entry);
     krb5_data_free (&data);
 } else if (opcode == NOW_YOU_HAVE)
     ;
 else
     krb5_errx (context, 1, "strange opcode %d", opcode);
    } while (opcode == ONE_PRINC);

    if (opcode != NOW_YOU_HAVE)
 krb5_errx (context, 1, "receive_everything: strange %d", opcode);

    krb5_ret_int32 (sp, &vno);
    krb5_storage_free(sp);

    ret = kadm5_log_reinit (server_context);
    if (ret)
 krb5_err(context, 1, ret, "kadm5_log_reinit");

    ret = kadm5_log_set_version (server_context, vno - 1);
    if (ret)
 krb5_err (context, 1, ret, "kadm5_log_set_version");

    ret = kadm5_log_nop (server_context);
    if (ret)
 krb5_err (context, 1, ret, "kadm5_log_nop");

    ret = mydb->hdb_rename (context, mydb, server_context->db->hdb_name);
    if (ret)
 krb5_err (context, 1, ret, "db->rename");

 cleanup:
    krb5_data_free (&data);

    ret = mydb->hdb_close (context, mydb);
    if (ret)
 krb5_err (context, 1, ret, "db->close");

    ret = mydb->hdb_destroy (context, mydb);
    if (ret)
 krb5_err (context, 1, ret, "db->destroy");

    krb5_warnx(context, "receive complete database, version %ld", (long)vno);
    return ret;
}
