
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int krb5_storage ;
typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_4__ {int context; TYPE_2__* db; } ;
typedef TYPE_1__ kadm5_server_context ;
typedef scalar_t__ kadm5_ret_t ;
struct TYPE_5__ {scalar_t__ (* hdb_remove ) (int ,TYPE_2__*,int ) ;} ;


 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_ret_principal (int *,int *) ;
 int krb5_set_error_message (int ,scalar_t__,char*,long) ;
 scalar_t__ stub1 (int ,TYPE_2__*,int ) ;

__attribute__((used)) static kadm5_ret_t
kadm5_log_replay_delete (kadm5_server_context *context,
    uint32_t ver,
    uint32_t len,
    krb5_storage *sp)
{
    krb5_error_code ret;
    krb5_principal principal;

    ret = krb5_ret_principal (sp, &principal);
    if (ret) {
 krb5_set_error_message(context->context, ret, "Failed to read deleted "
          "principal from log version: %ld", (long)ver);
 return ret;
    }

    ret = context->db->hdb_remove(context->context, context->db, principal);
    krb5_free_principal (context->context, principal);
    return ret;
}
