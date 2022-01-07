
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef int krb5_storage ;
struct TYPE_8__ {int context; } ;
typedef TYPE_1__ kadm5_server_context ;
typedef int kadm5_ret_t ;
typedef enum kadm_ops { ____Placeholder_kadm_ops } kadm_ops ;


 int KADM5_FAILURE ;
 int kadm5_log_replay_create (TYPE_1__*,int ,int ,int *) ;
 int kadm5_log_replay_delete (TYPE_1__*,int ,int ,int *) ;
 int kadm5_log_replay_modify (TYPE_1__*,int ,int ,int *) ;
 int kadm5_log_replay_nop (TYPE_1__*,int ,int ,int *) ;
 int kadm5_log_replay_rename (TYPE_1__*,int ,int ,int *) ;





 int krb5_set_error_message (int ,int ,char*,int) ;

kadm5_ret_t
kadm5_log_replay (kadm5_server_context *context,
    enum kadm_ops op,
    uint32_t ver,
    uint32_t len,
    krb5_storage *sp)
{
    switch (op) {
    case 132 :
 return kadm5_log_replay_create (context, ver, len, sp);
    case 131 :
 return kadm5_log_replay_delete (context, ver, len, sp);
    case 128 :
 return kadm5_log_replay_rename (context, ver, len, sp);
    case 130 :
 return kadm5_log_replay_modify (context, ver, len, sp);
    case 129 :
 return kadm5_log_replay_nop (context, ver, len, sp);
    default :
 krb5_set_error_message(context->context, KADM5_FAILURE,
          "Unsupported replay op %d", (int)op);
 return KADM5_FAILURE;
    }
}
