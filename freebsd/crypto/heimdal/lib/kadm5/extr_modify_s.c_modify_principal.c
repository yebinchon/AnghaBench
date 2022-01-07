
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_19__ {TYPE_4__* db; int context; } ;
typedef TYPE_1__ kadm5_server_context ;
typedef scalar_t__ kadm5_ret_t ;
typedef TYPE_2__* kadm5_principal_ent_t ;
struct TYPE_21__ {int entry; } ;
typedef TYPE_3__ hdb_entry_ex ;
typedef int ent ;
struct TYPE_22__ {int (* hdb_close ) (int ,TYPE_4__*) ;scalar_t__ (* hdb_store ) (int ,TYPE_4__*,int ,TYPE_3__*) ;scalar_t__ (* hdb_fetch_kvno ) (int ,TYPE_4__*,int ,int,int ,TYPE_3__*) ;scalar_t__ (* hdb_open ) (int ,TYPE_4__*,int ,int ) ;} ;
struct TYPE_20__ {int principal; int policy; } ;


 int HDB_F_ADMIN_DATA ;
 int HDB_F_GET_ANY ;
 int HDB_F_REPLACE ;
 scalar_t__ KADM5_BAD_MASK ;
 int KADM5_MOD_NAME ;
 int KADM5_MOD_TIME ;
 int KADM5_POLICY ;
 scalar_t__ KADM5_UNK_POLICY ;
 int O_RDWR ;
 scalar_t__ _kadm5_error_code (scalar_t__) ;
 scalar_t__ _kadm5_set_modifier (TYPE_1__*,int *) ;
 scalar_t__ _kadm5_setup_entry (TYPE_1__*,TYPE_3__*,int,TYPE_2__*,int,int *,int ) ;
 int hdb_free_entry (int ,TYPE_3__*) ;
 scalar_t__ hdb_seal_keys (int ,TYPE_4__*,int *) ;
 int kadm5_log_modify (TYPE_1__*,int *,int) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ stub1 (int ,TYPE_4__*,int ,int ) ;
 scalar_t__ stub2 (int ,TYPE_4__*,int ,int,int ,TYPE_3__*) ;
 scalar_t__ stub3 (int ,TYPE_4__*,int ,TYPE_3__*) ;
 int stub4 (int ,TYPE_4__*) ;

__attribute__((used)) static kadm5_ret_t
modify_principal(void *server_handle,
   kadm5_principal_ent_t princ,
   uint32_t mask,
   uint32_t forbidden_mask)
{
    kadm5_server_context *context = server_handle;
    hdb_entry_ex ent;
    kadm5_ret_t ret;
    if((mask & forbidden_mask))
 return KADM5_BAD_MASK;
    if((mask & KADM5_POLICY) && strcmp(princ->policy, "default"))
 return KADM5_UNK_POLICY;

    memset(&ent, 0, sizeof(ent));
    ret = context->db->hdb_open(context->context, context->db, O_RDWR, 0);
    if(ret)
 return ret;
    ret = context->db->hdb_fetch_kvno(context->context, context->db,
          princ->principal, HDB_F_GET_ANY|HDB_F_ADMIN_DATA, 0, &ent);
    if(ret)
 goto out;
    ret = _kadm5_setup_entry(context, &ent, mask, princ, mask, ((void*)0), 0);
    if(ret)
 goto out2;
    ret = _kadm5_set_modifier(context, &ent.entry);
    if(ret)
 goto out2;

    ret = hdb_seal_keys(context->context, context->db, &ent.entry);
    if (ret)
 goto out2;

    ret = context->db->hdb_store(context->context, context->db,
        HDB_F_REPLACE, &ent);
    if (ret)
 goto out2;

    kadm5_log_modify (context,
        &ent.entry,
        mask | KADM5_MOD_NAME | KADM5_MOD_TIME);

out2:
    hdb_free_entry(context->context, &ent);
out:
    context->db->hdb_close(context->context, context->db);
    return _kadm5_error_code(ret);
}
