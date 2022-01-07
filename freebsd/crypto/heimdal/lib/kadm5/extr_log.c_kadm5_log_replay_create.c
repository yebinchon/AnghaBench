
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_12__ {int data; } ;
typedef TYPE_1__ krb5_data ;
struct TYPE_13__ {int context; TYPE_4__* db; } ;
typedef TYPE_2__ kadm5_server_context ;
typedef scalar_t__ kadm5_ret_t ;
struct TYPE_14__ {int entry; } ;
typedef TYPE_3__ hdb_entry_ex ;
typedef int ent ;
struct TYPE_15__ {scalar_t__ (* hdb_store ) (int ,TYPE_4__*,int ,TYPE_3__*) ;} ;


 int hdb_free_entry (int ,TYPE_3__*) ;
 scalar_t__ hdb_value2entry (int ,TYPE_1__*,int *) ;
 scalar_t__ krb5_data_alloc (TYPE_1__*,int ) ;
 int krb5_data_free (TYPE_1__*) ;
 int krb5_set_error_message (int ,scalar_t__,char*) ;
 int krb5_storage_read (int *,int ,int ) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ stub1 (int ,TYPE_4__*,int ,TYPE_3__*) ;

__attribute__((used)) static kadm5_ret_t
kadm5_log_replay_create (kadm5_server_context *context,
    uint32_t ver,
    uint32_t len,
    krb5_storage *sp)
{
    krb5_error_code ret;
    krb5_data data;
    hdb_entry_ex ent;

    memset(&ent, 0, sizeof(ent));

    ret = krb5_data_alloc (&data, len);
    if (ret) {
 krb5_set_error_message(context->context, ret, "out of memory");
 return ret;
    }
    krb5_storage_read (sp, data.data, len);
    ret = hdb_value2entry (context->context, &data, &ent.entry);
    krb5_data_free(&data);
    if (ret) {
 krb5_set_error_message(context->context, ret,
          "Unmarshaling hdb entry failed");
 return ret;
    }
    ret = context->db->hdb_store(context->context, context->db, 0, &ent);
    hdb_free_entry (context->context, &ent);
    return ret;
}
