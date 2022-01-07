
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;


typedef int uint32_t ;
typedef int log_ent ;
typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_18__ {int data; } ;
typedef TYPE_2__ krb5_data ;
struct TYPE_19__ {int context; TYPE_5__* db; } ;
typedef TYPE_3__ kadm5_server_context ;
typedef scalar_t__ kadm5_ret_t ;
typedef int int32_t ;
struct TYPE_17__ {size_t len; int * val; } ;
struct TYPE_16__ {int * extensions; TYPE_1__ keys; int * max_renew; int kvno; int * modified_by; int * max_life; int flags; int * pw_end; int * valid_end; int principal; } ;
struct TYPE_20__ {TYPE_14__ entry; } ;
typedef TYPE_4__ hdb_entry_ex ;
typedef int ent ;
struct TYPE_21__ {scalar_t__ (* hdb_store ) (int ,TYPE_5__*,int ,TYPE_4__*) ;scalar_t__ (* hdb_fetch_kvno ) (int ,TYPE_5__*,int ,int,int ,TYPE_4__*) ;} ;
typedef int HDB_extensions ;


 scalar_t__ ENOMEM ;
 int HDB_F_ADMIN_DATA ;
 int HDB_F_DECRYPT ;
 int HDB_F_GET_ANY ;
 int HDB_F_REPLACE ;
 int KADM5_ATTRIBUTES ;
 int KADM5_AUX_ATTRIBUTES ;
 int KADM5_FAIL_AUTH_COUNT ;
 int KADM5_KEY_DATA ;
 int KADM5_KVNO ;
 int KADM5_LAST_FAILED ;
 int KADM5_LAST_PWD_CHANGE ;
 int KADM5_LAST_SUCCESS ;
 int KADM5_MAX_LIFE ;
 int KADM5_MAX_RLIFE ;
 int KADM5_MKVNO ;
 int KADM5_MOD_NAME ;
 int KADM5_MOD_TIME ;
 int KADM5_POLICY ;
 int KADM5_POLICY_CLR ;
 int KADM5_PRINC_EXPIRE_TIME ;
 int KADM5_PW_EXPIRATION ;
 int KADM5_TL_DATA ;
 int abort () ;
 int * calloc (int,int) ;
 scalar_t__ copy_Event (int *,int *) ;
 scalar_t__ copy_HDB_extensions (int *,int *) ;
 scalar_t__ copy_Key (int *,int *) ;
 int free (int *) ;
 int free_Event (int *) ;
 int free_HDB_extensions (int *) ;
 int free_Key (int *) ;
 int hdb_free_entry (int ,TYPE_4__*) ;
 scalar_t__ hdb_value2entry (int ,TYPE_2__*,TYPE_14__*) ;
 scalar_t__ krb5_data_alloc (TYPE_2__*,int) ;
 int krb5_data_free (TYPE_2__*) ;
 int krb5_ret_int32 (int *,int*) ;
 int krb5_set_error_message (int ,scalar_t__,char*) ;
 int krb5_storage_read (int *,int ,int) ;
 void* malloc (int) ;
 int memset (TYPE_4__*,int ,int) ;
 scalar_t__ stub1 (int ,TYPE_5__*,int ,int,int ,TYPE_4__*) ;
 scalar_t__ stub2 (int ,TYPE_5__*,int ,TYPE_4__*) ;

__attribute__((used)) static kadm5_ret_t
kadm5_log_replay_modify (kadm5_server_context *context,
    uint32_t ver,
    uint32_t len,
    krb5_storage *sp)
{
    krb5_error_code ret;
    int32_t mask;
    krb5_data value;
    hdb_entry_ex ent, log_ent;

    memset(&log_ent, 0, sizeof(log_ent));

    krb5_ret_int32 (sp, &mask);
    len -= 4;
    ret = krb5_data_alloc (&value, len);
    if (ret) {
 krb5_set_error_message(context->context, ret, "out of memory");
 return ret;
    }
    krb5_storage_read (sp, value.data, len);
    ret = hdb_value2entry (context->context, &value, &log_ent.entry);
    krb5_data_free(&value);
    if (ret)
 return ret;

    memset(&ent, 0, sizeof(ent));
    ret = context->db->hdb_fetch_kvno(context->context, context->db,
          log_ent.entry.principal,
          HDB_F_DECRYPT|HDB_F_GET_ANY|HDB_F_ADMIN_DATA, 0, &ent);
    if (ret)
 goto out;
    if (mask & KADM5_PRINC_EXPIRE_TIME) {
 if (log_ent.entry.valid_end == ((void*)0)) {
     ent.entry.valid_end = ((void*)0);
 } else {
     if (ent.entry.valid_end == ((void*)0)) {
  ent.entry.valid_end = malloc(sizeof(*ent.entry.valid_end));
  if (ent.entry.valid_end == ((void*)0)) {
      ret = ENOMEM;
      krb5_set_error_message(context->context, ret, "out of memory");
      goto out;
  }
     }
     *ent.entry.valid_end = *log_ent.entry.valid_end;
 }
    }
    if (mask & KADM5_PW_EXPIRATION) {
 if (log_ent.entry.pw_end == ((void*)0)) {
     ent.entry.pw_end = ((void*)0);
 } else {
     if (ent.entry.pw_end == ((void*)0)) {
  ent.entry.pw_end = malloc(sizeof(*ent.entry.pw_end));
  if (ent.entry.pw_end == ((void*)0)) {
      ret = ENOMEM;
      krb5_set_error_message(context->context, ret, "out of memory");
      goto out;
  }
     }
     *ent.entry.pw_end = *log_ent.entry.pw_end;
 }
    }
    if (mask & KADM5_LAST_PWD_CHANGE) {
 abort ();
    }
    if (mask & KADM5_ATTRIBUTES) {
 ent.entry.flags = log_ent.entry.flags;
    }
    if (mask & KADM5_MAX_LIFE) {
 if (log_ent.entry.max_life == ((void*)0)) {
     ent.entry.max_life = ((void*)0);
 } else {
     if (ent.entry.max_life == ((void*)0)) {
  ent.entry.max_life = malloc (sizeof(*ent.entry.max_life));
  if (ent.entry.max_life == ((void*)0)) {
      ret = ENOMEM;
      krb5_set_error_message(context->context, ret, "out of memory");
      goto out;
  }
     }
     *ent.entry.max_life = *log_ent.entry.max_life;
 }
    }
    if ((mask & KADM5_MOD_TIME) && (mask & KADM5_MOD_NAME)) {
 if (ent.entry.modified_by == ((void*)0)) {
     ent.entry.modified_by = malloc(sizeof(*ent.entry.modified_by));
     if (ent.entry.modified_by == ((void*)0)) {
  ret = ENOMEM;
  krb5_set_error_message(context->context, ret, "out of memory");
  goto out;
     }
 } else
     free_Event(ent.entry.modified_by);
 ret = copy_Event(log_ent.entry.modified_by, ent.entry.modified_by);
 if (ret) {
     krb5_set_error_message(context->context, ret, "out of memory");
     goto out;
 }
    }
    if (mask & KADM5_KVNO) {
 ent.entry.kvno = log_ent.entry.kvno;
    }
    if (mask & KADM5_MKVNO) {
 abort ();
    }
    if (mask & KADM5_AUX_ATTRIBUTES) {
 abort ();
    }
    if (mask & KADM5_POLICY) {
 abort ();
    }
    if (mask & KADM5_POLICY_CLR) {
 abort ();
    }
    if (mask & KADM5_MAX_RLIFE) {
 if (log_ent.entry.max_renew == ((void*)0)) {
     ent.entry.max_renew = ((void*)0);
 } else {
     if (ent.entry.max_renew == ((void*)0)) {
  ent.entry.max_renew = malloc (sizeof(*ent.entry.max_renew));
  if (ent.entry.max_renew == ((void*)0)) {
      ret = ENOMEM;
      krb5_set_error_message(context->context, ret, "out of memory");
      goto out;
  }
     }
     *ent.entry.max_renew = *log_ent.entry.max_renew;
 }
    }
    if (mask & KADM5_LAST_SUCCESS) {
 abort ();
    }
    if (mask & KADM5_LAST_FAILED) {
 abort ();
    }
    if (mask & KADM5_FAIL_AUTH_COUNT) {
 abort ();
    }
    if (mask & KADM5_KEY_DATA) {
 size_t num;
 size_t i;

 for (i = 0; i < ent.entry.keys.len; ++i)
     free_Key(&ent.entry.keys.val[i]);
 free (ent.entry.keys.val);

 num = log_ent.entry.keys.len;

 ent.entry.keys.len = num;
 ent.entry.keys.val = malloc(len * sizeof(*ent.entry.keys.val));
 if (ent.entry.keys.val == ((void*)0)) {
     krb5_set_error_message(context->context, ENOMEM, "out of memory");
     return ENOMEM;
 }
 for (i = 0; i < ent.entry.keys.len; ++i) {
     ret = copy_Key(&log_ent.entry.keys.val[i],
      &ent.entry.keys.val[i]);
     if (ret) {
  krb5_set_error_message(context->context, ret, "out of memory");
  goto out;
     }
 }
    }
    if ((mask & KADM5_TL_DATA) && log_ent.entry.extensions) {
 HDB_extensions *es = ent.entry.extensions;

 ent.entry.extensions = calloc(1, sizeof(*ent.entry.extensions));
 if (ent.entry.extensions == ((void*)0))
     goto out;

 ret = copy_HDB_extensions(log_ent.entry.extensions,
      ent.entry.extensions);
 if (ret) {
     krb5_set_error_message(context->context, ret, "out of memory");
     free(ent.entry.extensions);
     ent.entry.extensions = es;
     goto out;
 }
 if (es) {
     free_HDB_extensions(es);
     free(es);
 }
    }
    ret = context->db->hdb_store(context->context, context->db,
     HDB_F_REPLACE, &ent);
 out:
    hdb_free_entry (context->context, &ent);
    hdb_free_entry (context->context, &log_ent);
    return ret;
}
