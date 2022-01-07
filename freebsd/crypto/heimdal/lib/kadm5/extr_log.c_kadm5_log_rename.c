
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int off_t ;
typedef int krb5_storage ;
typedef int krb5_principal ;
struct TYPE_9__ {int length; int data; } ;
typedef TYPE_1__ krb5_data ;
struct TYPE_10__ {int context; int log_context; } ;
typedef TYPE_2__ kadm5_server_context ;
typedef scalar_t__ kadm5_ret_t ;
typedef int kadm5_log_context ;
typedef int hdb_entry ;


 int SEEK_CUR ;
 scalar_t__ hdb_entry2value (int ,int *,TYPE_1__*) ;
 scalar_t__ kadm5_log_end (TYPE_2__*) ;
 scalar_t__ kadm5_log_flush (int *,int *) ;
 scalar_t__ kadm5_log_postamble (int *,int *) ;
 scalar_t__ kadm5_log_preamble (TYPE_2__*,int *,int ) ;
 int kadm_rename ;
 int krb5_data_free (TYPE_1__*) ;
 int krb5_data_zero (TYPE_1__*) ;
 int * krb5_storage_emem () ;
 int krb5_storage_free (int *) ;
 int krb5_storage_seek (int *,int,int ) ;
 int krb5_storage_write (int *,int ,int ) ;
 scalar_t__ krb5_store_int32 (int *,int) ;
 scalar_t__ krb5_store_principal (int *,int ) ;

kadm5_ret_t
kadm5_log_rename (kadm5_server_context *context,
    krb5_principal source,
    hdb_entry *ent)
{
    krb5_storage *sp;
    kadm5_ret_t ret;
    off_t off;
    off_t len;
    krb5_data value;
    kadm5_log_context *log_context = &context->log_context;

    krb5_data_zero(&value);

    sp = krb5_storage_emem();
    ret = hdb_entry2value (context->context, ent, &value);
    if (ret)
 goto failed;

    ret = kadm5_log_preamble (context, sp, kadm_rename);
    if (ret)
 goto failed;

    ret = krb5_store_int32 (sp, 0);
    if (ret)
 goto failed;
    off = krb5_storage_seek (sp, 0, SEEK_CUR);
    ret = krb5_store_principal (sp, source);
    if (ret)
 goto failed;

    krb5_storage_write(sp, value.data, value.length);
    len = krb5_storage_seek (sp, 0, SEEK_CUR) - off;

    krb5_storage_seek(sp, -(len + 4), SEEK_CUR);
    ret = krb5_store_int32 (sp, len);
    if (ret)
 goto failed;

    krb5_storage_seek(sp, len, SEEK_CUR);
    ret = krb5_store_int32 (sp, len);
    if (ret)
 goto failed;

    ret = kadm5_log_postamble (log_context, sp);
    if (ret)
 goto failed;

    ret = kadm5_log_flush (log_context, sp);
    if (ret)
 goto failed;
    krb5_storage_free (sp);
    krb5_data_free (&value);

    return kadm5_log_end (context);

failed:
    krb5_data_free(&value);
    krb5_storage_free(sp);
    return ret;
}
