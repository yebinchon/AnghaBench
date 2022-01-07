
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


typedef int uint32_t ;
struct TYPE_16__ {struct TYPE_16__* tl_data_next; } ;
typedef TYPE_1__ krb5_tl_data ;
struct TYPE_17__ {int db; int context; } ;
typedef TYPE_2__ kadm5_server_context ;
typedef scalar_t__ kadm5_ret_t ;
typedef TYPE_3__* kadm5_principal_ent_t ;
struct TYPE_20__ {scalar_t__ invalid; } ;
struct TYPE_15__ {int max_renew; int kvno; int max_life; TYPE_8__ flags; int pw_end; int valid_end; } ;
struct TYPE_19__ {TYPE_14__ entry; } ;
typedef TYPE_4__ hdb_entry_ex ;
struct TYPE_18__ {TYPE_1__* tl_data; int key_data; int n_key_data; scalar_t__ max_renewable_life; int kvno; scalar_t__ max_life; int attributes; scalar_t__ pw_expiration; scalar_t__ princ_expire_time; } ;


 int KADM5_ATTRIBUTES ;
 int KADM5_FAIL_AUTH_COUNT ;
 int KADM5_KEY_DATA ;
 int KADM5_KVNO ;
 int KADM5_MAX_LIFE ;
 int KADM5_MAX_RLIFE ;
 int KADM5_PRINC_EXPIRE_TIME ;
 int KADM5_PW_EXPIRATION ;
 int KADM5_TL_DATA ;
 int _kadm5_set_keys2 (TYPE_2__*,TYPE_14__*,int ,int ) ;
 int attr_to_flags (int ,TYPE_8__*) ;
 int default_flags (TYPE_4__*,int) ;
 scalar_t__ perform_tl_data (int ,int ,TYPE_4__*,TYPE_1__*) ;
 int set_null (int ) ;
 int set_value (int ,scalar_t__) ;

kadm5_ret_t
_kadm5_setup_entry(kadm5_server_context *context,
     hdb_entry_ex *ent,
     uint32_t mask,
     kadm5_principal_ent_t princ,
     uint32_t princ_mask,
     kadm5_principal_ent_t def,
     uint32_t def_mask)
{
    if(mask & KADM5_PRINC_EXPIRE_TIME
       && princ_mask & KADM5_PRINC_EXPIRE_TIME) {
 if (princ->princ_expire_time)
     set_value(ent->entry.valid_end, princ->princ_expire_time);
 else
     set_null(ent->entry.valid_end);
    }
    if(mask & KADM5_PW_EXPIRATION
       && princ_mask & KADM5_PW_EXPIRATION) {
 if (princ->pw_expiration)
     set_value(ent->entry.pw_end, princ->pw_expiration);
 else
     set_null(ent->entry.pw_end);
    }
    if(mask & KADM5_ATTRIBUTES) {
 if (princ_mask & KADM5_ATTRIBUTES) {
     attr_to_flags(princ->attributes, &ent->entry.flags);
 } else if(def_mask & KADM5_ATTRIBUTES) {
     attr_to_flags(def->attributes, &ent->entry.flags);
     ent->entry.flags.invalid = 0;
 } else {
     default_flags(ent, 1);
 }
    }

    if(mask & KADM5_MAX_LIFE) {
 if(princ_mask & KADM5_MAX_LIFE) {
     if(princ->max_life)
       set_value(ent->entry.max_life, princ->max_life);
     else
       set_null(ent->entry.max_life);
 } else if(def_mask & KADM5_MAX_LIFE) {
     if(def->max_life)
       set_value(ent->entry.max_life, def->max_life);
     else
       set_null(ent->entry.max_life);
 }
    }
    if(mask & KADM5_KVNO
       && princ_mask & KADM5_KVNO)
 ent->entry.kvno = princ->kvno;
    if(mask & KADM5_MAX_RLIFE) {
 if(princ_mask & KADM5_MAX_RLIFE) {
   if(princ->max_renewable_life)
     set_value(ent->entry.max_renew, princ->max_renewable_life);
   else
     set_null(ent->entry.max_renew);
 } else if(def_mask & KADM5_MAX_RLIFE) {
   if(def->max_renewable_life)
     set_value(ent->entry.max_renew, def->max_renewable_life);
   else
     set_null(ent->entry.max_renew);
 }
    }
    if(mask & KADM5_KEY_DATA
       && princ_mask & KADM5_KEY_DATA) {
 _kadm5_set_keys2(context, &ent->entry,
    princ->n_key_data, princ->key_data);
    }
    if(mask & KADM5_TL_DATA) {
 krb5_tl_data *tl;

 for (tl = princ->tl_data; tl != ((void*)0); tl = tl->tl_data_next) {
     kadm5_ret_t ret;
     ret = perform_tl_data(context->context, context->db, ent, tl);
     if (ret)
  return ret;
 }
    }
    if(mask & KADM5_FAIL_AUTH_COUNT) {

    }
    return 0;
}
