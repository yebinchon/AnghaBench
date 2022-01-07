
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int target_ent ;
typedef size_t off_t ;
typedef int krb5_storage ;
typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_13__ {int data; } ;
typedef TYPE_1__ krb5_data ;
struct TYPE_14__ {int context; TYPE_4__* db; } ;
typedef TYPE_2__ kadm5_server_context ;
typedef scalar_t__ kadm5_ret_t ;
struct TYPE_15__ {int entry; } ;
typedef TYPE_3__ hdb_entry_ex ;
struct TYPE_16__ {scalar_t__ (* hdb_remove ) (int ,TYPE_4__*,int ) ;scalar_t__ (* hdb_store ) (int ,TYPE_4__*,int ,TYPE_3__*) ;} ;


 int SEEK_CUR ;
 int hdb_free_entry (int ,TYPE_3__*) ;
 scalar_t__ hdb_value2entry (int ,TYPE_1__*,int *) ;
 scalar_t__ krb5_data_alloc (TYPE_1__*,size_t) ;
 int krb5_data_free (TYPE_1__*) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_ret_principal (int *,int *) ;
 int krb5_set_error_message (int ,scalar_t__,char*,long) ;
 int krb5_storage_read (int *,int ,size_t) ;
 size_t krb5_storage_seek (int *,int ,int ) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ stub1 (int ,TYPE_4__*,int ,TYPE_3__*) ;
 scalar_t__ stub2 (int ,TYPE_4__*,int ) ;

__attribute__((used)) static kadm5_ret_t
kadm5_log_replay_rename (kadm5_server_context *context,
    uint32_t ver,
    uint32_t len,
    krb5_storage *sp)
{
    krb5_error_code ret;
    krb5_principal source;
    hdb_entry_ex target_ent;
    krb5_data value;
    off_t off;
    size_t princ_len, data_len;

    memset(&target_ent, 0, sizeof(target_ent));

    off = krb5_storage_seek(sp, 0, SEEK_CUR);
    ret = krb5_ret_principal (sp, &source);
    if (ret) {
 krb5_set_error_message(context->context, ret, "Failed to read renamed "
          "principal in log, version: %ld", (long)ver);
 return ret;
    }
    princ_len = krb5_storage_seek(sp, 0, SEEK_CUR) - off;
    data_len = len - princ_len;
    ret = krb5_data_alloc (&value, data_len);
    if (ret) {
 krb5_free_principal (context->context, source);
 return ret;
    }
    krb5_storage_read (sp, value.data, data_len);
    ret = hdb_value2entry (context->context, &value, &target_ent.entry);
    krb5_data_free(&value);
    if (ret) {
 krb5_free_principal (context->context, source);
 return ret;
    }
    ret = context->db->hdb_store (context->context, context->db,
      0, &target_ent);
    hdb_free_entry (context->context, &target_ent);
    if (ret) {
 krb5_free_principal (context->context, source);
 return ret;
    }
    ret = context->db->hdb_remove (context->context, context->db, source);
    krb5_free_principal (context->context, source);
    return ret;
}
