
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_14__ {int context; TYPE_3__* db; } ;
typedef TYPE_1__ kadm5_server_context ;
typedef scalar_t__ kadm5_ret_t ;
typedef int kadm5_principal_ent_t ;
struct TYPE_17__ {int kvno; } ;
struct TYPE_15__ {TYPE_8__ entry; } ;
typedef TYPE_2__ hdb_entry_ex ;
struct TYPE_16__ {int (* hdb_close ) (int ,TYPE_3__*) ;scalar_t__ (* hdb_store ) (int ,TYPE_3__*,int ,TYPE_2__*) ;scalar_t__ (* hdb_open ) (int ,TYPE_3__*,int ,int ) ;} ;


 int KADM5_AUX_ATTRIBUTES ;
 int KADM5_FAIL_AUTH_COUNT ;
 int KADM5_KEY_DATA ;
 int KADM5_KVNO ;
 int KADM5_LAST_FAILED ;
 int KADM5_LAST_PWD_CHANGE ;
 int KADM5_LAST_SUCCESS ;
 int KADM5_MKVNO ;
 int KADM5_MOD_NAME ;
 int KADM5_MOD_TIME ;
 int KADM5_POLICY_CLR ;
 int KADM5_PRINCIPAL ;
 int O_RDWR ;
 scalar_t__ _kadm5_error_code (scalar_t__) ;
 scalar_t__ create_principal (TYPE_1__*,int ,int,TYPE_2__*,int,int) ;
 int hdb_free_entry (int ,TYPE_2__*) ;
 scalar_t__ hdb_seal_keys (int ,TYPE_3__*,TYPE_8__*) ;
 int kadm5_log_create (TYPE_1__*,TYPE_8__*) ;
 scalar_t__ stub1 (int ,TYPE_3__*,int ,int ) ;
 scalar_t__ stub2 (int ,TYPE_3__*,int ,TYPE_2__*) ;
 int stub3 (int ,TYPE_3__*) ;

kadm5_ret_t
kadm5_s_create_principal_with_key(void *server_handle,
      kadm5_principal_ent_t princ,
      uint32_t mask)
{
    kadm5_ret_t ret;
    hdb_entry_ex ent;
    kadm5_server_context *context = server_handle;

    ret = create_principal(context, princ, mask, &ent,
      KADM5_PRINCIPAL | KADM5_KEY_DATA,
      KADM5_LAST_PWD_CHANGE | KADM5_MOD_TIME
      | KADM5_MOD_NAME | KADM5_MKVNO
      | KADM5_AUX_ATTRIBUTES
      | KADM5_POLICY_CLR | KADM5_LAST_SUCCESS
      | KADM5_LAST_FAILED | KADM5_FAIL_AUTH_COUNT);
    if(ret)
 goto out;

    if ((mask & KADM5_KVNO) == 0)
 ent.entry.kvno = 1;

    ret = hdb_seal_keys(context->context, context->db, &ent.entry);
    if (ret)
 goto out;

    ret = context->db->hdb_open(context->context, context->db, O_RDWR, 0);
    if(ret)
 goto out;
    ret = context->db->hdb_store(context->context, context->db, 0, &ent);
    context->db->hdb_close(context->context, context->db);
    if (ret)
 goto out;
    kadm5_log_create (context, &ent.entry);

out:
    hdb_free_entry(context->context, &ent);
    return _kadm5_error_code(ret);
}
