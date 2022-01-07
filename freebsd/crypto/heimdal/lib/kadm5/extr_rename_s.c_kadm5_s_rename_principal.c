
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_19__ ;


typedef int salt ;
struct TYPE_29__ {int saltvalue; } ;
typedef TYPE_3__ krb5_salt ;
typedef void* krb5_principal ;
struct TYPE_30__ {int context; TYPE_7__* db; } ;
typedef TYPE_4__ kadm5_server_context ;
typedef scalar_t__ kadm5_ret_t ;
struct TYPE_28__ {size_t len; TYPE_1__* val; } ;
struct TYPE_26__ {void* principal; TYPE_2__ keys; } ;
struct TYPE_31__ {TYPE_19__ entry; int salt; int type; } ;
typedef TYPE_5__ hdb_entry_ex ;
typedef int ent ;
struct TYPE_32__ {int (* hdb_close ) (int ,TYPE_7__*) ;scalar_t__ (* hdb_remove ) (int ,TYPE_7__*,void*) ;scalar_t__ (* hdb_store ) (int ,TYPE_7__*,int ,TYPE_5__*) ;scalar_t__ (* hdb_fetch_kvno ) (int ,TYPE_7__*,void*,int,int ,TYPE_5__*) ;scalar_t__ (* hdb_open ) (int ,TYPE_7__*,int ,int ) ;} ;
struct TYPE_27__ {int * salt; } ;
typedef TYPE_5__ Salt ;


 scalar_t__ ENOMEM ;
 int HDB_F_ADMIN_DATA ;
 int HDB_F_GET_ANY ;
 scalar_t__ KADM5_DUP ;
 int O_RDWR ;
 scalar_t__ _kadm5_error_code (scalar_t__) ;
 scalar_t__ _kadm5_set_modifier (TYPE_4__*,TYPE_19__*) ;
 scalar_t__ copy_Salt (TYPE_5__*,int *) ;
 int hdb_free_entry (int ,TYPE_5__*) ;
 int hdb_pw_salt ;
 scalar_t__ hdb_seal_keys (int ,TYPE_7__*,TYPE_19__*) ;
 int kadm5_log_rename (TYPE_4__*,void*,TYPE_19__*) ;
 int krb5_free_salt (int ,TYPE_3__) ;
 int krb5_get_pw_salt (int ,void*,TYPE_3__*) ;
 scalar_t__ krb5_principal_compare (int ,void*,void*) ;
 int * malloc (int) ;
 int memset (TYPE_5__*,int ,int) ;
 scalar_t__ stub1 (int ,TYPE_7__*,int ,int ) ;
 scalar_t__ stub2 (int ,TYPE_7__*,void*,int,int ,TYPE_5__*) ;
 int stub3 (int ,TYPE_7__*) ;
 scalar_t__ stub4 (int ,TYPE_7__*,int ,TYPE_5__*) ;
 scalar_t__ stub5 (int ,TYPE_7__*,void*) ;
 int stub6 (int ,TYPE_7__*) ;

kadm5_ret_t
kadm5_s_rename_principal(void *server_handle,
    krb5_principal source,
    krb5_principal target)
{
    kadm5_server_context *context = server_handle;
    kadm5_ret_t ret;
    hdb_entry_ex ent;
    krb5_principal oldname;

    memset(&ent, 0, sizeof(ent));
    if(krb5_principal_compare(context->context, source, target))
 return KADM5_DUP;
    ret = context->db->hdb_open(context->context, context->db, O_RDWR, 0);
    if(ret)
 return ret;
    ret = context->db->hdb_fetch_kvno(context->context, context->db,
          source, HDB_F_GET_ANY|HDB_F_ADMIN_DATA, 0, &ent);
    if(ret){
 context->db->hdb_close(context->context, context->db);
 goto out;
    }
    ret = _kadm5_set_modifier(context, &ent.entry);
    if(ret)
 goto out2;
    {

 size_t i;
 Salt salt;
 krb5_salt salt2;
 memset(&salt, 0, sizeof(salt));
 krb5_get_pw_salt(context->context, source, &salt2);
 salt.type = hdb_pw_salt;
 salt.salt = salt2.saltvalue;
 for(i = 0; i < ent.entry.keys.len; i++){
     if(ent.entry.keys.val[i].salt == ((void*)0)){
  ent.entry.keys.val[i].salt =
      malloc(sizeof(*ent.entry.keys.val[i].salt));
  if(ent.entry.keys.val[i].salt == ((void*)0))
      return ENOMEM;
  ret = copy_Salt(&salt, ent.entry.keys.val[i].salt);
  if(ret)
      break;
     }
 }
 krb5_free_salt(context->context, salt2);
    }
    if(ret)
 goto out2;
    oldname = ent.entry.principal;
    ent.entry.principal = target;

    ret = hdb_seal_keys(context->context, context->db, &ent.entry);
    if (ret) {
 ent.entry.principal = oldname;
 goto out2;
    }

    kadm5_log_rename (context, source, &ent.entry);

    ret = context->db->hdb_store(context->context, context->db, 0, &ent);
    if(ret){
 ent.entry.principal = oldname;
 goto out2;
    }
    ret = context->db->hdb_remove(context->context, context->db, oldname);
    ent.entry.principal = oldname;
out2:
    context->db->hdb_close(context->context, context->db);
    hdb_free_entry(context->context, &ent);
out:
    return _kadm5_error_code(ret);
}
